#!/usr/bin/env python

import rospy
import sys
from std_msgs.msg import Float32, ColorRGBA, Int32
from geometry_msgs.msg import PoseStamped, Twist, Vector3, Point
from visualization_msgs.msg import Marker, MarkerArray

import numpy as np

import rospkg

import network
import agent
import util

class CollisionAvoid:
    def __init__(self, radius = 0.5):
        rospack = rospkg.RosPack()
        self.a = network.Actions()
        self.num_actions = self.a.num_actions
        self.nn = network.NetworkVP_rnn(network.Config.DEVICE, 'network', self.num_actions)
        self.nn.simple_load(rospack.get_path('obstacle_avoid')+'/checkpoints/network_01900000')
        #Publisher
        self.pub_twist = rospy.Publisher('mitsumi_twist',Twist,queue_size=1)
        self.pub_pose_marker = rospy.Publisher('mitsumi_pose_marker',Marker,queue_size=1)
        #Subscriber
        self.sub_pose = rospy.Subscriber('mitsumi_pose',PoseStamped,self.cbPose)
        self.sub_global_goal = rospy.Subscriber('mitsumi_goal',PoseStamped, self.cbGoal)
        self.sub_vel = rospy.Subscriber('mitsumi_velocity',Vector3,self.cbVel)
        self.sub_vel = rospy.Subscriber('mitsumi_obstacles',Vector3,self.cbVel)

        self.heading_angle = 0
        self.start_x = 0
        self.start_y = 0
        self.goal_x = 5
        self.goal_y = 5
        self.radius = radius
        self.pref_speed = 1.2
        self.velocity_x = 0
        self.velocity_y = 0
        self.nn_timer = rospy.Timer(rospy.Duration(0.1),self.start)
        self.num_poses = 1

    def start(self,event):
        action = self.run()
        self.publishAction(action)
        
        turnAngle = 0 if action[1] == 0 else 180/(np.pi/action[1])
        mySpeed = action[0]
        self.start_x-=  (mySpeed/10 * np.cos(turnAngle))
        self.start_y-=  (mySpeed/10 * np.sin(turnAngle))
        # print '%0.3f,%0.3f'%(self.start_x, self.start_y)
        print 'New Location:(%0.4f , %0.4f)\tSpeed:%0.3f\tTurnAngle: %2.3f\tHeading Angle:%0.2f'% (self.start_x,self.start_y,mySpeed,turnAngle,self.heading_angle)
        self.num_poses+=1
        newPose = PoseStamped()
        newPose.pose.position.x = self.start_x
        newPose.pose.position.y = self.start_y
        self.visualize_pose(newPose.pose.position,newPose.pose.orientation)
        goalPose = PoseStamped()
        goalPose.pose.position.x = self.goal_x
        goalPose.pose.position.y = self.goal_y
        self.visualize_goal(goalPose.pose.position,goalPose.pose.orientation)
        
    def cbPose(self, msg):
        self.num_poses+=1
        print("RECEIVED POSE")
        q = msg.pose.orientation
        self.heading_angle = np.arctan2(2.0*(q.w*q.z + q.x*q.y), 1-2*(q.y*q.y+q.z*q.z)) # bounded by [-pi, pi]
        poseStamp = msg
        self.start_x = poseStamp.pose.position.x; 
        self.start_y = poseStamp.pose.position.y
        self.visualize_pose(msg.pose.position,msg.pose.orientation)

    
    def visualize_goal(self,pos,orientation):
        marker = Marker()
        marker.header.stamp = rospy.Time.now()
        marker.header.frame_id = 'map'
        marker.ns = 'agent'
        marker.id = 0
        marker.type = marker.CUBE
        marker.action = marker.ADD
        marker.pose.position = pos
        marker.pose.orientation = orientation
        marker.scale = Vector3(x=0.7,y=0.42,z=1)
        marker.color = ColorRGBA(r=0,g=1.0,a=1.0)
        marker.lifetime = rospy.Duration(1.0)
        self.pub_pose_marker.publish(marker)

    def visualize_pose(self,pos,orientation):
        # Yellow Box for Vehicle
        marker = Marker()
        marker.header.stamp = rospy.Time.now()
        marker.header.frame_id = 'map'
        marker.ns = 'agent'
        marker.id = 1
        marker.type = marker.CUBE
        marker.action = marker.ADD
        marker.pose.position = pos
        marker.pose.orientation = orientation
        marker.scale = Vector3(x=0.7,y=0.42,z=1)
        marker.color = ColorRGBA(r=1.0,g=1.0,a=1.0)
        marker.lifetime = rospy.Duration(1.0)
        self.pub_pose_marker.publish(marker)

        # Red track for trajectory over time
        marker = Marker()
        marker.header.stamp = rospy.Time.now()
        marker.header.frame_id = 'map'
        marker.ns = 'agent'
        marker.id = self.num_poses
        marker.type = marker.CUBE
        marker.action = marker.ADD
        marker.pose.position = pos
        marker.pose.orientation = orientation
        marker.scale = Vector3(x=0.2,y=0.2,z=0.2)
        marker.color = ColorRGBA(r=1.0,a=1.0)
        marker.lifetime = rospy.Duration(10.0)
        self.pub_pose_marker.publish(marker)

    def cbGoal(self,msg):
        print("RECEIVED GOAL")
        self.goal_x = msg.pose.position.x
        self.goal_y = msg.pose.position.y

    def cbVel(self, msg):
        print("RECEIVED VELOCITY")
        self.velocity_x = msg.x
        self.velocity_y = msg.y

    def publishAction(self,action):
        twist = Twist()
        twist.linear.x = action[0]
        yaw_error = action[1] - self.heading_angle
        if yaw_error > np.pi:
            yaw_error -= 2*np.pi
        if yaw_error < -np.pi:
            yaw_error += 2*np.pi
        twist.angular.z = 2*yaw_error
        self.pub_twist.publish(twist)

    def run(self):
        # print 'Epoch:', self.index
        # print 'Start Pos:', start_x, start_y
        index = 0

        host_agent = agent.Agent(self.start_x, self.start_y, self.goal_x, self.goal_y, self.radius, self.pref_speed, self.heading_angle, index)
        host_agent.vel_global_frame = np.array([self.velocity_x, self.velocity_y])
        # Sample observation data in a format easily generated from sensors
        other_agents_x =  [  4,   7]
        other_agents_y =  [  2,   2]
        other_agents_r =  [  1,   2.5]
        other_agents_vx = [  0,   0]
        other_agents_vy = [  0,   0]
        num_other_agents = len(other_agents_x)

        # Create Agent objects for each observed dynamic obstacle
        other_agents = []
        for i in range(num_other_agents):
            x = other_agents_x[i]; y = other_agents_y[i]
            v_x = other_agents_vx[i]; v_y = other_agents_vy[i]
            radius = other_agents_r[i]
            
            # dummy info - unobservable states not used by NN, just needed to create Agent object
            heading_angle = np.arctan2(v_y, v_x) 
            pref_speed = np.linalg.norm(np.array([v_x, v_y]))
            goal_x = x + 5.0; goal_y = y + 5.0
            
            other_agents.append(agent.Agent(x, y, goal_x, goal_y, radius, pref_speed, heading_angle, i+1))
        obs = host_agent.observe(other_agents)[1:]
        obs = np.expand_dims(obs, axis=0)
        predictions = self.nn.predict_p(obs, None)[0]
        raw_action = self.a.actions[np.argmax(predictions)]
        action = np.array([host_agent.pref_speed*raw_action[0], util.wrap(raw_action[1] + host_agent.heading_global_frame)])
        return action

if __name__ == '__main__':
    rospy.init_node('col_avoid',anonymous=False)
    sample = CollisionAvoid()
    # rospy.on_shutdown(nn_jackal.on_shutdown)
    rospy.spin()
    