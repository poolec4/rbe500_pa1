#!/usr/bin/env python

# RBE 500 - Foundations of Robotics
# Written by: 

# configuration_to_operational_sub.py
# ROS subscriber node that converts configuration space values (joint angles and displacements) to the pose of the end-effector.

import rospy # ROS python library
import math # math library
import numpy as np # numpy library for arrays and matrices

#TODO import necessary messages 

def rot_to_euler(R): # converts a 3x3 rotation matrix to ZYZ Euler angles
	phi = math.atan2(R[1,2],R[0,2])
	psi = math.atan2(R[2,1],-R[2,0])
	theta = math.atan2((R[2,1]/math.sin(psi)),R[2,2])

	eangles = np.array([phi, theta, psi])
	
	return eangles

def calc_homogeneous_transform(q): # calculate the homogeneous transform from the base frame to EE
	
	##
	#TODO add frame transformations here
	##


	T7_0 = #TODO add transform multiplication here # post multiplication of transforms

	return T_EE 

def callback(data):
	th1 = data.q1 # extracting message data
	th2 = data.q2
	d3 = data.d3

	print("Received joint angles: [%f, %f, %f, %f, %f, %f] (th1,th2,d3)" % (th1,th2,d3)) # printing received data to terminal

	q = np.array([th1,th2,d3]) # combine joint configurations into array (radians) 

	T_EE = calc_homogeneous_transform(q) # calculate end effector transform
	R_EE = T_EE[0:3,0:3] # scraping the rotatoin matrix from the transform
	d_EE = T_EE[0:3,3] # scraping the translation from the transform

	eangles_EE = rot_to_euler(R_EE) # convert orientation to euler angles

	print("Converted end-effector pose: p = [%f, %f, %f, %f, %f, %f] (x,y,z,phi,theta,psi) (ZYZ) (radians)" % (d_EE[0],d_EE[1],d_EE[2],eangles_EE[0],eangles_EE[1],eangles_EE[2])) # printing converted values to terminal

def listener(): # function that loops continuously waiting for incoming messages
    rospy.init_node('configuration_to_operational_sub') # initialize node
    rospy.Subscriber('configuration_to_operational_sub', joint_configuration, callback) # initialize subscriber under configuration_to_operational_sub topic name, joint_configuration as the message, and the callback function

    rospy.spin() # keep node running

if __name__ == '__main__': # run only if entry point to program (i.e. running from command line)
	listener() # invoke listener loop