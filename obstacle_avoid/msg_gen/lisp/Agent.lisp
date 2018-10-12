; Auto-generated. Do not edit!


(cl:in-package obstacle_avoid-msg)


;//! \htmlinclude Agent.msg.html

(cl:defclass <Agent> (roslisp-msg-protocol:ros-message)
  ((labels
    :reader labels
    :initarg :labels
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (radius
    :reader radius
    :initarg :radius
    :type cl:integer
    :initform 0))
)

(cl:defclass Agent (<Agent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Agent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Agent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name obstacle_avoid-msg:<Agent> is deprecated: use obstacle_avoid-msg:Agent instead.")))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <Agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obstacle_avoid-msg:labels-val is deprecated.  Use obstacle_avoid-msg:labels instead.")
  (labels m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obstacle_avoid-msg:position-val is deprecated.  Use obstacle_avoid-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obstacle_avoid-msg:velocity-val is deprecated.  Use obstacle_avoid-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obstacle_avoid-msg:radius-val is deprecated.  Use obstacle_avoid-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Agent>) ostream)
  "Serializes a message object of type '<Agent>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'labels))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radius)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Agent>) istream)
  "Deserializes a message object of type '<Agent>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'radius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'radius)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Agent>)))
  "Returns string type for a message object of type '<Agent>"
  "obstacle_avoid/Agent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Agent)))
  "Returns string type for a message object of type 'Agent"
  "obstacle_avoid/Agent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Agent>)))
  "Returns md5sum for a message object of type '<Agent>"
  "46dce0cf997547f6311d35e6d320f9a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Agent)))
  "Returns md5sum for a message object of type 'Agent"
  "46dce0cf997547f6311d35e6d320f9a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Agent>)))
  "Returns full string definition for message of type '<Agent>"
  (cl:format cl:nil "uint32[] labels~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint32 radius~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Agent)))
  "Returns full string definition for message of type 'Agent"
  (cl:format cl:nil "uint32[] labels~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%uint32 radius~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Agent>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Agent>))
  "Converts a ROS message object to a list"
  (cl:list 'Agent
    (cl:cons ':labels (labels msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':radius (radius msg))
))
