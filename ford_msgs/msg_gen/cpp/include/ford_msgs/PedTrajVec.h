/* Auto-generated by genmsg_cpp for file /home/ted/ROS/sandbox/ford_msgs/msg/PedTrajVec.msg */
#ifndef FORD_MSGS_MESSAGE_PEDTRAJVEC_H
#define FORD_MSGS_MESSAGE_PEDTRAJVEC_H
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

#include "ford_msgs/PedTraj.h"

namespace ford_msgs
{
template <class ContainerAllocator>
struct PedTrajVec_ {
  typedef PedTrajVec_<ContainerAllocator> Type;

  PedTrajVec_()
  : ped_traj_vec()
  {
  }

  PedTrajVec_(const ContainerAllocator& _alloc)
  : ped_traj_vec(_alloc)
  {
  }

  typedef std::vector< ::ford_msgs::PedTraj_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ford_msgs::PedTraj_<ContainerAllocator> >::other >  _ped_traj_vec_type;
  std::vector< ::ford_msgs::PedTraj_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ford_msgs::PedTraj_<ContainerAllocator> >::other >  ped_traj_vec;


  typedef boost::shared_ptr< ::ford_msgs::PedTrajVec_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ford_msgs::PedTrajVec_<ContainerAllocator>  const> ConstPtr;
}; // struct PedTrajVec
typedef  ::ford_msgs::PedTrajVec_<std::allocator<void> > PedTrajVec;

typedef boost::shared_ptr< ::ford_msgs::PedTrajVec> PedTrajVecPtr;
typedef boost::shared_ptr< ::ford_msgs::PedTrajVec const> PedTrajVecConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::ford_msgs::PedTrajVec_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::ford_msgs::PedTrajVec_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace ford_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::ford_msgs::PedTrajVec_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::ford_msgs::PedTrajVec_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::ford_msgs::PedTrajVec_<ContainerAllocator> > {
  static const char* value() 
  {
    return "05f33aed1bfc6d0d35110034d9c56bfa";
  }

  static const char* value(const  ::ford_msgs::PedTrajVec_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x05f33aed1bfc6d0dULL;
  static const uint64_t static_value2 = 0x35110034d9c56bfaULL;
};

template<class ContainerAllocator>
struct DataType< ::ford_msgs::PedTrajVec_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ford_msgs/PedTrajVec";
  }

  static const char* value(const  ::ford_msgs::PedTrajVec_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::ford_msgs::PedTrajVec_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ford_msgs/PedTraj[] ped_traj_vec\n\
================================================================================\n\
MSG: ford_msgs/PedTraj\n\
uint32 ped_id\n\
ford_msgs/Pose2DStamped[] traj\n\
float32 value #Used for PREDICTION types\n\
uint8 type \n\
#ENUM for type\n\
uint8 OBSERVATION=0\n\
uint8 PREDICTION_LINEAR=1\n\
uint8 PREDICTION_GP=2\n\
================================================================================\n\
MSG: ford_msgs/Pose2DStamped\n\
std_msgs/Header header\n\
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

  static const char* value(const  ::ford_msgs::PedTrajVec_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::ford_msgs::PedTrajVec_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.ped_traj_vec);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct PedTrajVec_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ford_msgs::PedTrajVec_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::ford_msgs::PedTrajVec_<ContainerAllocator> & v) 
  {
    s << indent << "ped_traj_vec[]" << std::endl;
    for (size_t i = 0; i < v.ped_traj_vec.size(); ++i)
    {
      s << indent << "  ped_traj_vec[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ford_msgs::PedTraj_<ContainerAllocator> >::stream(s, indent + "    ", v.ped_traj_vec[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // FORD_MSGS_MESSAGE_PEDTRAJVEC_H
