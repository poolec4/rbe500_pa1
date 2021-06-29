#include "ros/ros.h"
#include "scara_inverse_kinematics/poseJoints.h"
#include <cstdlib>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "inverse_client");
	if (argc != 4)
	{
		ROS_INFO("usage: inverse_client X Y Z");
		return 1;
	}

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<scara_inverse_kinematics::poseJoints>("inverse_server");

	scara_inverse_kinematics::poseJoints srv;
	srv.request.x = float(atof(argv[1]));
	srv.request.y = float(atof(argv[2]));
	srv.request.z = float(atof(argv[3]));
	if (client.call(srv))
	{
		ROS_INFO("Joints are: theta1=%1f theta2=%1f d3=%1f", srv.response.theta1, srv.response.theta2, srv.response.d3);
	}
	else
	{
		return 1;
	}

	return 0;
}
