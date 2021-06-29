#include "ros/ros.h"
#include "scara_inverse_kinematics/poseJoints.h"
#include <cstdlib>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "inverse_client");
	if (argc != 3)
	{
		ROS_INFO("usage: inverse_client X Y Z");
		return 1;
	}

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<inverse_kinematics::poseJoints>("inverse");

	inverse_kinematics::poseJoints srv;
	srv.request.r11 = atoll(argv[1]);
	srv.request.r12 = atoll(argv[2]);
	srv.request.r13 = atoll(argv[3]);

	srv.request.r21 = atoll(argv[4]);
	srv.request.r22 = atoll(argv[5]);
	srv.request.r23 = atoll(argv[6]);

	srv.request.r31 = atoll(argv[7]);
	srv.request.r32 = atoll(argv[8]);
	srv.request.r33 = atoll(argv[9]);

	srv.request.x = atoll(argv[10]);
	srv.request.y = atoll(argv[11]);
	srv.request.z = atoll(argv[12]);
	if (client.call(srv))
	{
		ROS_INFO("Joints are: theta1=%1f theta2=%1f d3=%1f", srv.response.theta1, srv.response.theta2, srv.response.d3);
	}
	else
	{
		ROS_ERROR("Failed to call service inverse");
		return 1;
	}

	return 0;
}
