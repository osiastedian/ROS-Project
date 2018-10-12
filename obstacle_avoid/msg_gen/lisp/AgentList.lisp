; Auto-generated. Do not edit!


(cl:in-package obstacle_avoid-msg)


;//! \htmlinclude AgentList.msg.html

(cl:defclass <AgentList> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type (cl:vector obstacle_avoid-msg:Agent)
   :initform (cl:make-array 0 :element-type 'obstacle_avoid-msg:Agent :initial-element (cl:make-instance 'obstacle_avoid-msg:Agent))))
)

(cl:defclass AgentList (<AgentList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name obstacle_avoid-msg:<AgentList> is deprecated: use obstacle_avoid-msg:AgentList instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <AgentList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obstacle_avoid-msg:list-val is deprecated.  Use obstacle_avoid-msg:list instead.")
  (list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentList>) ostream)
  "Serializes a message object of type '<AgentList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentList>) istream)
  "Deserializes a message object of type '<AgentList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'obstacle_avoid-msg:Agent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentList>)))
  "Returns string type for a message object of type '<AgentList>"
  "obstacle_avoid/AgentList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentList)))
  "Returns string type for a message object of type 'AgentList"
  "obstacle_avoid/AgentList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentList>)))
  "Returns md5sum for a message object of type '<AgentList>"
  "89adb5d7c94f57147efa3c2f27c2b24c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentList)))
  "Returns md5sum for a message object of type 'AgentList"
  "89adb5d7c94f57147efa3c2f27c2b24c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentList>)))
  "Returns full string definition for message of type '<AgentList>"
  (cl:format cl:nil "obstacle_avoid/Agent[] list~%================================================================================~%MSG: obstacle_avoid/Agent~%uint32[] labels~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint32 radius~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentList)))
  "Returns full string definition for message of type 'AgentList"
  (cl:format cl:nil "obstacle_avoid/Agent[] list~%================================================================================~%MSG: obstacle_avoid/Agent~%uint32[] labels~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint32 radius~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentList>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentList
    (cl:cons ':list (list msg))
))
