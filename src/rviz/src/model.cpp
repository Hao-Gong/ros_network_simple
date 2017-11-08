#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include "std_msgs/String.h"

struct model_position{
    float x;
    float y;
    float z;
};

struct model_param{
    model_position position;
};

class robot_model
{
    public:
        robot_model();
        model_param m_param;
        int model(ros::Publisher marker_pub);
};

void ControlCallback(const std_msgs::String::ConstPtr& msg);

robot_model rm;

int main( int argc, char** argv )
{
  ros::init(argc, argv, "Model");
  ros::NodeHandle n;
  ros::Rate r(100);
  ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
  ros::Subscriber sub = n.subscribe("/controler", 1000, ControlCallback);

  while (ros::ok())
  {
    rm.model(marker_pub);
    ros::spinOnce();
    r.sleep();
  }
  return 0;
}


//class function definition
robot_model::robot_model(){
    m_param.position.x=0;
    m_param.position.y=0;
    m_param.position.z=0;
}


void ControlCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());

  std::string accept_str = msg->data;
  if(accept_str=="forwards"){
        rm.m_param.position.y++;
        ROS_INFO("forwards");
   }else if(accept_str=="backwards"){
        rm.m_param.position.y--;
        ROS_INFO("backwards");
   }else if(accept_str=="right"){
        rm.m_param.position.x++;
        ROS_INFO("right");
   }else if(accept_str=="left"){
        rm.m_param.position.x--;
        ROS_INFO("left");}
}

int robot_model::model(ros::Publisher marker_pub)
{
    visualization_msgs::Marker marker;
    // Set the frame ID and timestamp.  See the TF tutorials for information on these.
    marker.header.frame_id = "/my_frame";
    marker.header.stamp = ros::Time::now();

    // Set the namespace and id for this marker.  This serves to create a unique ID
    // Any marker sent with the same namespace and id will overwrite the old one
    marker.ns = "basic_shapes";
    marker.id = 0;

    // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
    marker.type = visualization_msgs::Marker::CUBE;

    // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
    marker.action = visualization_msgs::Marker::ADD;

    // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
    marker.pose.position.x = m_param.position.x;
    marker.pose.position.y = m_param.position.y;
    marker.pose.position.z = m_param.position.z;
    marker.pose.orientation.x = 0.0;
    marker.pose.orientation.y = 0.0;
    marker.pose.orientation.z = 0.0;
    marker.pose.orientation.w = 1.0;

    // Set the scale of the marker -- 1x1x1 here means 1m on a side
    marker.scale.x = 1.0;
    marker.scale.y = 2.0;
    marker.scale.z = 0.5;

    // Set the color -- be sure to set alpha to something non-zero!
    marker.color.r = 0.0f;
    marker.color.g = 1.0f;
    marker.color.b = 0.0f;
    marker.color.a = 1.0;

    marker.lifetime = ros::Duration();

    marker_pub.publish(marker);
}
