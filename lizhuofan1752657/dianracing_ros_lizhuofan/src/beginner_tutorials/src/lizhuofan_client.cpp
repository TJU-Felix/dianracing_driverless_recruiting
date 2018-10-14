#include "ros/ros.h"
#include "beginner_tutorials/Fun_xyz.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "lizhuofan_client");
  if (argc != 4)
  {
    ROS_INFO("usage: lizhuofan_client X Y Z");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<beginner_tutorials::Fun_xyz>("fun_xyz");
  beginner_tutorials::Fun_xyz srv;
  srv.request.a = atoll(argv[1]);
  srv.request.b = atoll(argv[2]);
  srv.request.c = atoll(argv[3]);
  if (client.call(srv))
  {
    ROS_INFO("Result: %ld", (long int)srv.response.s);
  }
  else
  {
    ROS_ERROR("Failed to call service fun_xyz");
    return 1;
  }

  return 0;
}
