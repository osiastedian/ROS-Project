/* Auto-generated by genmsg_cpp for file /home/ted/ROS/sandbox/sample_action_server/msg/TurnResult.msg */
#ifndef SAMPLE_ACTION_SERVER_MESSAGE_TURNRESULT_H
#define SAMPLE_ACTION_SERVER_MESSAGE_TURNRESULT_H
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


namespace sample_action_server
{
template <class ContainerAllocator>
struct TurnResult_ {
  typedef TurnResult_<ContainerAllocator> Type;

  TurnResult_()
  : angle(0)
  {
  }

  TurnResult_(const ContainerAllocator& _alloc)
  : angle(0)
  {
  }

  typedef int64_t _angle_type;
  int64_t angle;


  typedef boost::shared_ptr< ::sample_action_server::TurnResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sample_action_server::TurnResult_<ContainerAllocator>  const> ConstPtr;
}; // struct TurnResult
typedef  ::sample_action_server::TurnResult_<std::allocator<void> > TurnResult;

typedef boost::shared_ptr< ::sample_action_server::TurnResult> TurnResultPtr;
typedef boost::shared_ptr< ::sample_action_server::TurnResult const> TurnResultConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::sample_action_server::TurnResult_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::sample_action_server::TurnResult_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace sample_action_server

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::sample_action_server::TurnResult_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::sample_action_server::TurnResult_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::sample_action_server::TurnResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4400518c93d5f9762876a1f7ae109f30";
  }

  static const char* value(const  ::sample_action_server::TurnResult_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x4400518c93d5f976ULL;
  static const uint64_t static_value2 = 0x2876a1f7ae109f30ULL;
};

template<class ContainerAllocator>
struct DataType< ::sample_action_server::TurnResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "sample_action_server/TurnResult";
  }

  static const char* value(const  ::sample_action_server::TurnResult_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::sample_action_server::TurnResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result\n\
int64 angle\n\
\n\
";
  }

  static const char* value(const  ::sample_action_server::TurnResult_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::sample_action_server::TurnResult_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::sample_action_server::TurnResult_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.angle);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct TurnResult_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sample_action_server::TurnResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::sample_action_server::TurnResult_<ContainerAllocator> & v) 
  {
    s << indent << "angle: ";
    Printer<int64_t>::stream(s, indent + "  ", v.angle);
  }
};


} // namespace message_operations
} // namespace ros

#endif // SAMPLE_ACTION_SERVER_MESSAGE_TURNRESULT_H
