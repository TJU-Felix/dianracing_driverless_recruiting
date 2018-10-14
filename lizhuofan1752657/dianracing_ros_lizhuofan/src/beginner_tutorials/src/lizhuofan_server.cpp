#include "ros/ros.h"
#include "beginner_tutorials/Fun_xyz.h"

bool fun(beginner_tutorials::Fun_xyz::Request  &req,
         beginner_tutorials::Fun_xyz::Response &res)
{
  res.s = (req.a + req.b)*req.c;
  ROS_INFO("request: x=%ld, y=%ld,z=%ld", (long int)req.a, (long int)req.b, (long int)req.c);
  ROS_INFO("sending back response: [%ld]", (long int)res.s);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "fun_xyz");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("fun_xyz", fun);
  ROS_INFO("Ready to (x+y)*z.");
  ros::spin();

  return 0;
}
