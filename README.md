# ROS-Project

Demo:
This assumes you have already have installed ROS on linux.
This was tested on ROS Melodic.

1. Create a sandboxed workspace on ROS.
http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment on number 3.

2. Clone 'obstacle_avoid' directory unto the sandboxed folder.
3. Install Tensorflow on your environment (https://www.tensorflow.org/install/pip)
4. Go to the 'obstacle_avoid' directory and run terminal on that directory.
This assumes you have already set your source with your newly created workspace
ex. "source ~/ROS/setup.bash".
5. Run 'rosmake' command. This will build the rospackage.
6. Open another terminal and run the ROS core by 'roscore'
7. Open another terminal and let's run the package. 'rosrun obstacle_avoid colAvoid.py'
(Note: To see simulation you can run ROS' built-in visualizer by entering this command before 'rosrun rviz rviz')


This ColAvoid class subscribes and publishes the following topics:
Publishes:
1. mitsumi_twist - the Twist of the robot(includes speed and angle of turn)
2. mitsumi_pose_marker - the markers for visualization
3. mitsumi_agent_markers - the markers for the other agents.

Subscribes to:
1. mitsumi_pose - sets the global position of the robot
2. mitsumi_goal - sets the global position of the goal.
3. mitsumi_velocity - sets the preferred velocity of the robot.
4. mitsumi_obstacles - sets the obstacles detected by the robot.

The Initial Values for the demo can be found on the '__init__' function of the ColAvoid class.
While the 'start' function defines the updating of the information the simulated robot.

This project has been successful thanks to this original GitHub project (https://github.com/mfe7/cadrl_ros).
We reused the network available on this project.

You can check the 'Agent' and 'AgentList' message if you want to use this on your projects.
This defines the information needed of an 'Agent'

