#!/usr/bin/env python

# RBE 500 - Foundations of Robotics
# Written by: 

# configuration_to_operational_sub.py
# ROS subscriber node that converts configuration space values (joint angles and displacements) to the pose of the end-effector.

import rospy # ROS python library
import math # math library
import numpy as np # numpy library for arrays and matrices

from tf.transformations import euler_from_quaternion

from sensor_msgs.msg import JointState
from scara_forward_kinematics.msg import scara_robot_pose # list of message variables

debug = True

d1 = 3.5 # <---- UPDATE
l1 = 2 # <---- UPDATE
l2 = 1 # <---- UPDATE

def rot_to_euler(R): # converts a 3x3 rotation matrix to ZYZ Euler angles
	phi = math.atan2(R[1,2],R[0,2])
	sphi = math.sin(phi)
	cphi = math.cos(phi)
	theta = math.atan2(cphi*R[0,2] + sphi*R[1,2], R[2,2])
	psi = math.atan2(-sphi*R[0,0] + cphi*R[1,0], -sphi*R[0,1] + cphi*R[1,1])

	eangles = np.array([phi, theta, psi])
	
	return eangles

def calc_homogeneous_transform(q): # calculate the homogeneous transform from the base frame to EE
	# q = [th1, th2, d3]
	th1 = q[0]
	th2 = q[1]
	d3 = q[2]

	T1_0 = np.matrix([[1,0,0,0],[0,1,0,0],[0,0,1,0],[0,0,0,1]]) # frame 1 w.r.t 0
	T2_1 = np.matrix([[math.cos(th1),-math.sin(th1),0,l1*math.cos(th1)],[math.sin(th1),math.cos(th1),0,l1*math.sin(th1)],[0,0,1,d1],[0,0,0,1]])	# frame 2 w.r.t 1 
	T3_2 = np.matrix([[math.cos(th2),-math.sin(th2),0,l2*math.cos(th2)],[math.sin(th2),math.cos(th2),0,l2*math.sin(th2)],[0,0,1,0],[0,0,0,1]])	# frame 3 w.r.t 2 
	T4_3 = np.matrix([[1,0,0,0],[0,1,0,0],[0,0,1,-d3],[0,0,0,1]]) # frame 4 w.r.t 3

	T_EE = T1_0.dot(T2_1).dot(T3_2).dot(T4_3)

	return T_EE 

def callback(data):

	th1 = data.position[0] # extract message data
	th2 = data.position[1]
	d3 = data.position[2]

	if debug == True:
		print("\n\nReceived joint parameters: [%f, %f, %f] (th1,th2,d3) (radians, meters)" % (th1,th2,d3)) # printing received data to terminal

	q = np.array([th1,th2,d3]) # combine joint configurations into array (radians, meters) 

	T_EE = calc_homogeneous_transform(q) # calculate end effector transform
	R_EE = T_EE[0:3,0:3] # scraping the rotation matrix from the transform
	d_EE = T_EE[0:3,3] # scraping the translation from the transform

	eangles_EE = rot_to_euler(R_EE) # convert orientation to euler angles

	msg = scara_robot_pose();

	msg.x = d_EE[0]
	msg.y = d_EE[1]
	msg.z = d_EE[2]
	msg.psi = eangles_EE[0]
	msg.theta = eangles_EE[1]
	msg.psi = eangles_EE[2]

	pose_publisher = rospy.Publisher("/scara/pose", scara_robot_pose, queue_size = 1)
	pose_publisher.publish(msg)
	
	if debug == True:
		print("\nConverted end-effector pose: p = [%f, %f, %f, %f, %f, %f] (x,y,z,phi,theta,psi) (ZYZ) (meters, radians)" % (d_EE[0],d_EE[1],d_EE[2],eangles_EE[0],eangles_EE[1],eangles_EE[2])) # printing converted values to terminal

def listener(): # function that loops continuously waiting for incoming messages
    rospy.init_node('configuration_to_operational_sub') # initialize node
    rospy.Subscriber('/scara/joint_states', JointState, callback) # initialize subscriber under /scara_robot/joint_states topic name, JointState as the message, and the callback function

    rospy.spin() # keep node running

if __name__ == '__main__': # run only if entry point to program (i.e. running from command line)
	listener() # invoke listener loop