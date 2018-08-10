#! /usr/bin/env python

import rospy

import actionlib

import roslib; roslib.load_manifest('sample_action_server')
from sample_action_server.msg import *

def myActionClient():
    client = actionlib.SimpleActionClient('turn_me', TurnAction)

    client.wait_for_server()

    goal = TurnGoal(turnId = 0)

    client.send_goal(goal)

    client.wait_for_result()

    return client.get_result()

if __name__ == '__main__':
    try:
        rospy.init_node('myActionClient')
        result = myActionClient()
        print('Result:', result)
    except rospy.ROSInterruptException:
        print('Interrupted')
