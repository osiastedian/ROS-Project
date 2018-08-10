#!/usr/bin/env python

import agent
import network
import util
import numpy as np

possible_actions = network.Actions()
num_actions = possible_actions.num_actions
print 'Num Actions:' ,num_actions
nn = network.NetworkVP_rnn(network.Config.DEVICE, 'network', num_actions)
nn.simple_load('../checkpoints/network_01900000')

start_x = 2
start_y = 5
goal_x = 3
goal_y = 2
radius = 0.5
pref_speed = 1.2
heading_angle = 0
index = 0
v_x = 0
v_y = 0

host_agent = agent.Agent(start_x, start_y, goal_x, goal_y, radius, pref_speed, heading_angle, index)
host_agent.vel_global_frame = np.array([v_x, v_y])

# Sample observation data in a format easily generated from sensors``
other_agents_x = [-1,-2,-3]
other_agents_y = [2,3,4]
other_agents_r = [0.5, 0.4, 0.3]
other_agents_vx = [1.0, 0.6, 0.2]
other_agents_vy = [0.0, 0.6, 0.8]
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
predictions = nn.predict_p(obs, None)[0]
raw_action = possible_actions.actions[np.argmax(predictions)]
action = np.array([host_agent.pref_speed*raw_action[0], util.wrap(raw_action[1] + host_agent.heading_global_frame)])
print "action:", action