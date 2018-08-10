/* Auto-generated by genmsg_cpp for file /home/ted/ROS/sandbox/ford_msgs/msg/Pose2DStamped.msg */
#ifndef FORD_MSGS_MESSAGE_POSE2DSTAMPED_H
#define FORD_MSGS_MESSAGE_POSE2DSTAMPED_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "std_msgs/Header.h"
#include "geometry_msgs/Pose2D.h"
#include "geometry_msgs/Vector3.h"

namespace ford_msgs
{
template <class ContainerAllocator>
struct Pose2DStamped_ {
  typedef Pose2DStamped_<ContainerAllocator> Type;

  Pose2DStamped_()
  : header()
  , pose()
  , velocity()
  {
  }

  Pose2DStamped_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , pose(_alloc)
  , velocity(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _pose_type;
   ::geometry_msgs::Pose2D_<ContainerAllocator>  pose;

  typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _velocity_type;
   ::geometry_msgs::Vector3_<ContainerAllocator>  velocity;


  typedef boost::shared_ptr< ::ford_msgs::Pose2DStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ford_msgs::Pose2DStamped_<ContainerAllocator>  const> ConstPtr;
}; // struct Pose2DStamped
typedef  ::ford_msgs::Pose2DStamped_<std::allocator<void> > Pose2DStamped;

typedef boost::shared_ptr< ::ford_msgs::Pose2DStamped> Pose2DStampedPtr;
typedef boost::shared_ptr< ::ford_msgs::Pose2DStamped const> Pose2DStampedConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ford_msgs::Pose2DStamped_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ford_msgs::Pose2DStamped_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ford_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::ford_msgs::Pose2DStamped_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::ford_msgs::Pose2DStamped_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::ford_msgs::Pose2DStamped_<ContainerAllocator> > {
  static const char* value() 
  {
    return "f4e92c15aac28a0fa81ffcfffb7cd21d";
  }

  static const char* value(const  ::ford_msgs::Pose2DStamped_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xf4e92c15aac28a0fULL;
  static const uint64_t static_value2 = 0xa81ffcfffb7cd21dULL;
};

template<class ContainerAllocator>
struct DataType< ::ford_msgs::Pose2DStamped_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ford_msgs/Pose2DStamped";
  }

  static const char* value(const  ::ford_msgs::Pose2DStamped_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ford_msgs::Pose2DStamped_<ContainerAllocator> > {
  static const char* value() 
  {
    return "std_msgs/Header header\n\
geometry_msgs/Pose2D pose\n\
geometry_msgs/Vector3 velocity\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose2D\n\
# This expresses a position and orientation on a 2D manifold.\n\
\n\
float64 x\n\
float64 y\n\
float64 theta\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const  ::ford_msgs::Pose2DStamped_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::ford_msgs::Pose2DStamped_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::ford_msgs::Pose2DStamped_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ford_msgs::Pose2DStamped_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.pose);
    stream.next(m.velocity);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct Pose2DStamped_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ford_msgs::Pose2DStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ford_msgs::Pose2DStamped_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "pose: ";
s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "velocity: ";
s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
  }
};


} // namespace message_operations
} // namespace ros

#endif // FORD_MSGS_MESSAGE_POSE2DSTAMPED_H
