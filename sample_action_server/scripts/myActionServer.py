#! /usr/bin/env python

import roslib; roslib.load_manifest('sample_action_server')
from sample_action_server.msg import *

import rospy
import actionlib



class TurnServer:
    def __init__(self):
        self.server = actionlib.SimpleActionServer('turn_me', TurnAction, self.execute, False)
        self.server.start()
    
    def execute(self, goal):
        result = TurnResult(angle = 123)
        self.server.set_succeeded(result)

if __name__ == '__main__':
    rospy.init_node('turn_server')
    server = TurnServer()
    rospy.spin()
