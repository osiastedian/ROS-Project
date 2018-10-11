#!/usr/bin/env python

import rospy
import sys
import keyboard
from std_msgs.msg import Float32, ColorRGBA, Int32
from geometry_msgs.msg import Pose,PoseStamped, Twist, Vector3, Point

import roslib; roslib.load_manifest('ford_msgs')
from ford_msgs.msg import PedTrajVec, NNActions, PlannerMode, Clusters
from network import Actions

class Sample():

    def __init__(self):
        self.stop = False
        self.initialized = False
        self.twistDefault = Twist()
        self.twistDefault.angular = Vector3(0,0,0)
        self.twistDefault.linear = Vector3(0,0,0)
        self.GoalSent = False

    def twisted(self, msg):
        # if msg == self.twistDefault:
        #     return
        # if not self.initialized:
        #     return
        # self.stop = True
        print("Angular Z:", msg.angular.z, "Linear X", msg.linear.x)

    def run(self):
        rospy.init_node('SampleNode', anonymous=True)
        rate = rospy.Rate(10)
        postTopic = rospy.Publisher('mitsumi_pose',PoseStamped, queue_size=1)
        goalTopic = rospy.Publisher('mitsumi_goal', PoseStamped, queue_size=1)
        velocityTopic = rospy.Publisher('mitsumi_velocity', Vector3, queue_size=1)
        clustersTopic = rospy.Publisher('mitsumi_clusters', Clusters, queue_size=1)
        actionsTopic = rospy.Publisher('mitsumi_safe_actions', NNActions, queue_size=1)
        modeTopic = rospy.Publisher('mitsumi_mode',PlannerMode, queue_size=1)
        
        mode = PlannerMode()
        mode.mode = mode.NN
        actions = NNActions()

        # self.value_net = value_net
        self.operation_mode = PlannerMode()
        self.operation_mode.mode = self.operation_mode.NN

        rospy.Subscriber('mitsumi_nn_cmd_vel',Twist,self.twisted)

        pose = Pose()
        pose.position.x = 2
        pose.position.y = 5
        pose.position.z = 0
        sampleMessage = PoseStamped()
        sampleMessage.pose = pose

        goalpose = Pose()
        goalpose.position.x = 5
        goalpose.position.y = 5
        goalpose.position.z = 0
        goalMessage = PoseStamped()
        goalMessage.pose = goalpose

        velocity = Vector3()
        velocity.x = 0.5
        velocity.y = 0.6

        cluster_all = Clusters()
        cluster_all.labels = [0, 1, 2]
        cluster_all.min_points =  [Point(1,1,0), Point( 3, 1, 0), Point(5,1,0)]
        cluster_all.mean_points = [Point(1,2,0), Point( 3, 2, 0), Point(5,2,0)]
        cluster_all.max_points =  [Point(1,3,0), Point( 3, 3, 0), Point(5,3,0)]
        cluster_all.velocities =  [Vector3(0,0,0), Vector3(0, 0, 0), Vector3(0,0,0)]

        index = 0
        whatever = True
        while not rospy.is_shutdown() and not self.stop:
            if(index % 100 == 0 or whatever):
                postTopic.publish(sampleMessage)
                clustersTopic.publish(cluster_all)
            if(index % 200 == 0 or whatever):
                goalTopic.publish(goalMessage)
            if(index == 50 or whatever):
                velocityTopic.publish(velocity)
            actionsTopic.publish(actions)
            modeTopic.publish(mode)
            index = index + 1
            # print(index)
            rate.sleep()

if __name__ == '__main__':
    samp = Sample()
    samp.run()
        # rate.sleep()