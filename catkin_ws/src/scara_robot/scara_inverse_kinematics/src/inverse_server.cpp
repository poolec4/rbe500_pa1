#include "ros/ros.h"
#include "scara_inverse_kinematics/poseJoints.h"
#include "math.h"

/*
 *Rotation Matrix = [cos(th1)cos(th2)-sin(th1)sin(th2) -sin(th2)cos(th1)-cos(th2)sin(th1) 0,
 		     cos(th2)sin(th1)+sin(th2)cos(th1) cos(th2)cos(th1)-sin(th2)sin(th1) 0,
		     0					0				1]
 *Position = [l2cos(th2)cos(th1)+l1cos(th1)-l2sin(th2)sin(th1)
 	      l2cos(th2)sin(th1)+l2sin(th2)cos(th1)+l1sin(th1)
	      -d3+d1]
 *
 *
 *
 *
 * D = - (l2^2+l1^2-(Px^2+Py^2))/(2l1*l2)
 *
 * th2 = atan2(+/- sqrt(1-D^2), D)
 *
 * C = (l1^2+Px^2+Py^2-l2^2)/(2*l1*sqrt(Px^2+Py^2))
 *
 *alpha = atan2(Py, Px)
 *
 * th1 = alpha - atan2(+/- sqrt(1-C^2), C)
 */



bool findJoints(scara_inverse_kinematics::poseJoints::Request &req, scara_inverse_kinematics::poseJoints::Response &res)
{
	//need to change, currently only taking in part of pose
	//pose = orientation + position, only have position
	
	double l1, l2, d1; //link lengths and original distance needs to be defined

	double r11 = req.r11;
	double r12 = req.r12;
	double r13 = req.r13;

	double r21 = req.r21;
	double r22 = req.r22;
	double r23 = req.r23;

	double r31 = req.r31;
	double r32 = req.r32;
	double r33 = req.r33;

	double x = req.x;
	double y = req.y;
	double z = req.z;

	double D = - (((l1*l1)+(l2*l2)-(x*x+y*y))/(2*l1*l2));
	double C = (((l1*l1)+x*x+y*y-(l2*l2))/(2*l1*sqrt(x*x+y*y)));

	double B = sqrt(1-D*D);
	double E = sqrt(1-C*C);

	double F = x/sqrt(x*x+y*y);
	double G = sqrt(1-F*F);	
	double alpha = atan2(G, F);

	res.theta1 = alpha-atan2(E, C);
	res.theta2 = atan2(B, D);
	res.d3 = d1 - z;

	ROS_INFO("request:r11=%1f, r12=%1f, r13=%1f, r21=%1f, r22=%1f, r23=%1f, r31=%1f, r32=%1f, r33=%1f, i=%1f, y=%1f, z=%1f", x, y,z);
	ROS_INFO("sending back response: theta1=%1f, theta2=%1f, d3=%1f", res.theta1, res.theta2, res.d3);
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "inverse_server");
	ros::NodeHandle n;

	ros::ServiceServer service = n.advertiseService("inverse", findJoints);
	ROS_INFO("Ready to find Joints.");
	ros::spin();

	return 0;
}
