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
	
	double l1 = 2, l2 = 1, d1 = 3.5; //link lengths and original distance needs to be defined

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

	ROS_INFO("request: x=%f, y=%f, z=%f", x, y ,z);
	ROS_INFO("sending back response: theta1=%f, theta2=%f, d3=%f", res.theta1, res.theta2, res.d3);
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "inverse_server");
	ros::NodeHandle n;

	ros::ServiceServer service = n.advertiseService("inverse_server", findJoints);
	ROS_INFO("Ready to find Joints.");
	ros::spin();

	return 0;
}
