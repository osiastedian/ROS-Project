/* Auto-generated by genmsg_cpp for file /home/ted/ROS/sandbox/ford_msgs/msg/SSDObjs.msg */
#ifndef FORD_MSGS_MESSAGE_SSDOBJS_H
#define FORD_MSGS_MESSAGE_SSDOBJS_H
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
#include "std_msgs/ColorRGBA.h"
#include "geometry_msgs/Point.h"

namespace ford_msgs
{
template <class ContainerAllocator>
struct SSDObjs_ {
  typedef SSDObjs_<ContainerAllocator> Type;

  SSDObjs_()
  : header()
  , avg_colors()
  , clusters()
  , pincer_obs()
  {
  }

  SSDObjs_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , avg_colors(_alloc)
  , clusters(_alloc)
  , pincer_obs(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::vector< ::std_msgs::ColorRGBA_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::std_msgs::ColorRGBA_<ContainerAllocator> >::other >  _avg_colors_type;
  std::vector< ::std_msgs::ColorRGBA_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::std_msgs::ColorRGBA_<ContainerAllocator> >::other >  avg_colors;

  typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _clusters_type;
  std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  clusters;

  typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _pincer_obs_type;
  std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  pincer_obs;


  typedef boost::shared_ptr< ::ford_msgs::SSDObjs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ford_msgs::SSDObjs_<ContainerAllocator>  const> ConstPtr;
}; // struct SSDObjs
typedef  ::ford_msgs::SSDObjs_<std::allocator<void> > SSDObjs;

typedef boost::shared_ptr< ::ford_msgs::SSDObjs> SSDObjsPtr;
typedef boost::shared_ptr< ::ford_msgs::SSDObjs const> SSDObjsConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ford_msgs::SSDObjs_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ford_msgs::SSDObjs_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ford_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::ford_msgs::SSDObjs_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::ford_msgs::SSDObjs_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::ford_msgs::SSDObjs_<ContainerAllocator> > {
  static const char* value() 
  {
    return "67a4b6ed1fabd91000a0077cb78e4704";
  }

  static const char* value(const  ::ford_msgs::SSDObjs_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x67a4b6ed1fabd910ULL;
  static const uint64_t static_value2 = 0x00a0077cb78e4704ULL;
};

template<class ContainerAllocator>
struct DataType< ::ford_msgs::SSDObjs_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ford_msgs/SSDObjs";
  }

  static const char* value(const  ::ford_msgs::SSDObjs_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ford_msgs::SSDObjs_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
std_msgs/ColorRGBA[] avg_colors\n\
geometry_msgs/Point[] clusters\n\
uint8[] pincer_obs\n\
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
MSG: std_msgs/ColorRGBA\n\
float32 r\n\
float32 g\n\
float32 b\n\
float32 a\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
";
  }

  static const char* value(const  ::ford_msgs::SSDObjs_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::ford_msgs::SSDObjs_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::ford_msgs::SSDObjs_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ford_msgs::SSDObjs_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.avg_colors);
    stream.next(m.clusters);
    stream.next(m.pincer_obs);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct SSDObjs_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ford_msgs::SSDObjs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ford_msgs::SSDObjs_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "avg_colors[]" << std::endl;
    for (size_t i = 0; i < v.avg_colors.size(); ++i)
    {
      s << indent << "  avg_colors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::std_msgs::ColorRGBA_<ContainerAllocator> >::stream(s, indent + "    ", v.avg_colors[i]);
    }
    s << indent << "clusters[]" << std::endl;
    for (size_t i = 0; i < v.clusters.size(); ++i)
    {
      s << indent << "  clusters[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.clusters[i]);
    }
    s << indent << "pincer_obs[]" << std::endl;
    for (size_t i = 0; i < v.pincer_obs.size(); ++i)
    {
      s << indent << "  pincer_obs[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.pincer_obs[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // FORD_MSGS_MESSAGE_SSDOBJS_H

