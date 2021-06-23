# rbe500_team2_pa1
Repo for Team 2 - Project #1 (RBE 500)

**Assignment Description**

1. Create the robot:Create the following SCARA robot in ROS and Gazebo.

![alt text](https://raw.githubusercontent.com/poolec4/rbe500_team2_pa1/main/pt1-SCARA.png)

You can utilize ROS Session 5 and the Gazebo tutorials about how to create the robot and how to integrate it with ROS. Please note that only the configuration of the robot is important; it does not need to visually look like it is in the figure. You can represent the links with cylinders, for example.Please note that you can read the joint value of the robot via topics published by Gazebo to the ROS environment. Spawn your robot in your ROS-Gazebo environment and take an image of your robot. Include the image in your report together with your robot definition file.

2. Forward Kinematics: Implement a forward kinematics node that:
* Subscribes to the joint values topic and reads them from the gazebo simulator
* Calculate the end effector pose
* Pblishes the pose as a ROS topic (inside the callback function that reads the joint values)

This is a publisher-subscriber implementation. Print the resulting pose to the terminal by using “rostopic echo” command, and include the screenshot in your report.

3.  Inverse Kinematics: Implement an inverse kinematics node (a separate node) that has a service client that takes a (desired) pose of the end effector and returns joint positions as a response.

This is a service server-service client implementation.

Test your node with the “rosservice call” command. Take the screen shot together and include it to your report. 

Be sure to submit your code.

___


**Robot Frame Definition**
![alt text](https://raw.githubusercontent.com/poolec4/rbe500_team2_pa1/main/Submission/figures/rrp_manipulator_reference_frames.png)

**Package Overview**

1. configuration_to_operational_sub.py corresponds to part 2. It will subscribe to the joint values topic from Gazebo and calucalte the end effector pose. TODO:
* Change subscriber to point to correct message from Gazebo
* Add in transformation equations from DH params
* Add publisher inside callback function

**Insructions**
