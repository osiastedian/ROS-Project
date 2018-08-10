/* Auto-generated by genmsg_cpp for file /home/ted/ROS/sandbox/ford_msgs/msg/NNActions.msg */
#ifndef FORD_MSGS_MESSAGE_NNACTIONS_H
#define FORD_MSGS_MESSAGE_NNACTIONS_H
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

namespace ford_msgs
{
template <class ContainerAllocator>
struct NNActions_ {
  typedef NNActions_<ContainerAllocator> Type;

  NNActions_()
  : header()
  , angles()
  , max_speeds()
  , subgoal()
  , path_lengths()
  , current_cost_to_go(0.0)
  {
  }

  NNActions_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , angles(_alloc)
  , max_speeds(_alloc)
  , subgoal(_alloc)
  , path_lengths(_alloc)
  , current_cost_to_go(0.0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _angles_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  angles;

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _max_speeds_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  max_speeds;

  typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _subgoal_type;
   ::geometry_msgs::Pose2D_<ContainerAllocator>  subgoal;

  typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _path_lengths_type;
  std::vector<float, typename ContainerAllocator::template rebind<float>::other >  path_lengths;

  typedef float _current_cost_to_go_type;
  float current_cost_to_go;


  typedef boost::shared_ptr< ::ford_msgs::NNActions_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ford_msgs::NNActions_<ContainerAllocator>  const> ConstPtr;
}; // struct NNActions
typedef  ::ford_msgs::NNActions_<std::allocator<void> > NNActions;

typedef boost::shared_ptr< ::ford_msgs::NNActions> NNActionsPtr;
typedef boost::shared_ptr< ::ford_msgs::NNActions const> NNActionsConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ford_msgs::NNActions_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ford_msgs::NNActions_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ford_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::ford_msgs::NNActions_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::ford_msgs::NNActions_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::ford_msgs::NNActions_<ContainerAllocator> > {
  static const char* value() 
  {
    return "baed85cab20cbff17eb30c95cd61ef93";
  }

  static const char* value(const  ::ford_msgs::NNActions_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xbaed85cab20cbff1ULL;
  static const uint64_t static_value2 = 0x7eb30c95cd61ef93ULL;
};

template<class ContainerAllocator>
struct DataType< ::ford_msgs::NNActions_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ford_msgs/NNActions";
  }

  static const char* value(const  ::ford_msgs::NNActions_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ford_msgs::NNActions_<ContainerAllocator> > {
  static const char* value() 
  {
    return "std_msgs/Header header\n\
float32[] angles\n\
float32[] max_speeds\n\
geometry_msgs/Pose2D subgoal\n\
float32[] path_lengths\n\
float32 current_cost_to_go\n\
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
";
  }

  static const char* value(const  ::ford_msgs::NNActions_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::ford_msgs::NNActions_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::ford_msgs::NNActions_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ford_msgs::NNActions_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.angles);
    stream.next(m.max_speeds);
    stream.next(m.subgoal);
    stream.next(m.path_lengths);
    stream.next(m.current_cost_to_go);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct NNActions_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ford_msgs::NNActions_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ford_msgs::NNActions_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "angles[]" << std::endl;
    for (size_t i = 0; i < v.angles.size(); ++i)
    {
      s << indent << "  angles[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.angles[i]);
    }
    s << indent << "max_speeds[]" << std::endl;
    for (size_t i = 0; i < v.max_speeds.size(); ++i)
    {
      s << indent << "  max_speeds[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.max_speeds[i]);
    }
    s << indent << "subgoal: ";
s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.subgoal);
    s << indent << "path_lengths[]" << std::endl;
    for (size_t i = 0; i < v.path_lengths.size(); ++i)
    {
      s << indent << "  path_lengths[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.path_lengths[i]);
    }
    s << indent << "current_cost_to_go: ";
    Printer<float>::stream(s, indent + "  ", v.current_cost_to_go);
  }
};


} // namespace message_operations
} // namespace ros

#endif // FORD_MSGS_MESSAGE_NNACTIONS_H

