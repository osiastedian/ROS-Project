#!/usr/bin/env python

import rospy
import sys
from std_msgs.msg import Float32, ColorRGBA, Int32
from geometry_msgs.msg import PoseStamped, Twist, Vector3, Point
import roslib; roslib.load_manifest('ford_msgs')
from ford_msgs.msg import PedTrajVec, NNActions, PlannerMode, Clusters
from visualization_msgs.msg import Marker, MarkerArray

import numpy as np
import numpy.matlib
import pickle
from matplotlib import cm
import matplotlib.pyplot as plt
import copy
import os
import time
import random
import math

import rospkg

import network
import agent
import util

class CollisionAvoid:
    def __init__(self):
        # file_dir = os.path.dirname(os.path.realpath(__file__))
        plt.rcParams.update({'font.size': 18})
        rospack = rospkg.RosPack()
        self.a = network.Actions()
        self.num_actions = self.a.num_actions
        self.nn = network.NetworkVP_rnn(network.Config.DEVICE, 'network', self.num_actions)
        self.nn.simple_load(rospack.get_path('obstacle_avoid')+'/checkpoints/network_01900000')
        self.index = 0
        self.limit = 300
        self.heading_angle = 0
        self.start_x = 0
        self.start_y = 0
        self.goal_x = 10
        self.goal_y = 3
        self.radius = 0.5
        self.pref_speed = 1.2
        self.nn_timer = rospy.Timer(rospy.Duration(0.1),self.start)

    def start(self,event):
        action = self.run()
        turnAngle = 0 if action[1] == 0 else 180/(np.pi/action[1])
        mySpeed = action[0]
        self.start_x-=  (mySpeed/10 * np.cos(turnAngle))
        self.start_y-=  (mySpeed/10 * np.sin(turnAngle))
        # print '%0.3f,%0.3f'%(self.start_x, self.start_y)
        print 'New Location:(%0.4f , %0.4f)\tSpeed:%0.3f\tTurnAngle: %2.3f\tHeading Angle:%0.2f'% (self.start_x,self.start_y,mySpeed,turnAngle,self.heading_angle)


    def run(self):
        # print 'Epoch:', self.index
        # print 'Start Pos:', start_x, start_y
        index = 0
        v_x = 0
        v_y = 0

        host_agent = agent.Agent(self.start_x, self.start_y, self.goal_x, self.goal_y, self.radius, self.pref_speed, self.heading_angle, index)
        host_agent.vel_global_frame = np.array([v_x, v_y])
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
    