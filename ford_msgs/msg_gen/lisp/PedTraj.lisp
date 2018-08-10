; Auto-generated. Do not edit!


(cl:in-package ford_msgs-msg)


;//! \htmlinclude PedTraj.msg.html

(cl:defclass <PedTraj> (roslisp-msg-protocol:ros-message)
  ((ped_id
    :reader ped_id
    :initarg :ped_id
    :type cl:integer
    :initform 0)
   (traj
    :reader traj
    :initarg :traj
    :type (cl:vector ford_msgs-msg:Pose2DStamped)
   :initform (cl:make-array 0 :element-type 'ford_msgs-msg:Pose2DStamped :initial-element (cl:make-instance 'ford_msgs-msg:Pose2DStamped)))
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PedTraj (<PedTraj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PedTraj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PedTraj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ford_msgs-msg:<PedTraj> is deprecated: use ford_msgs-msg:PedTraj instead.")))

(cl:ensure-generic-function 'ped_id-val :lambda-list '(m))
(cl:defmethod ped_id-val ((m <PedTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:ped_id-val is deprecated.  Use ford_msgs-msg:ped_id instead.")
  (ped_id m))

(cl:ensure-generic-function 'traj-val :lambda-list '(m))
(cl:defmethod traj-val ((m <PedTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:traj-val is deprecated.  Use ford_msgs-msg:traj instead.")
  (traj m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PedTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:value-val is deprecated.  Use ford_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PedTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:type-val is deprecated.  Use ford_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PedTraj>)))
    "Constants for message type '<PedTraj>"
  '((:OBSERVATION . 0)
    (:PREDICTION_LINEAR . 1)
    (:PREDICTION_GP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PedTraj)))
    "Constants for message type 'PedTraj"
  '((:OBSERVATION . 0)
    (:PREDICTION_LINEAR . 1)
    (:PREDICTION_GP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PedTraj>) ostream)
  "Serializes a message object of type '<PedTraj>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ped_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ped_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ped_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ped_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traj))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PedTraj>) istream)
  "Deserializes a message object of type '<PedTraj>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ped_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ped_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ped_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ped_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ford_msgs-msg:Pose2DStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PedTraj>)))
  "Returns string type for a message object of type '<PedTraj>"
  "ford_msgs/PedTraj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PedTraj)))
  "Returns string type for a message object of type 'PedTraj"
  "ford_msgs/PedTraj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PedTraj>)))
  "Returns md5sum for a message object of type '<PedTraj>"
  "8925770871a7e9ee7020a76e368dc696")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PedTraj)))
  "Returns md5sum for a message object of type 'PedTraj"
  "8925770871a7e9ee7020a76e368dc696")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PedTraj>)))
  "Returns full string definition for message of type '<PedTraj>"
  (cl:format cl:nil "uint32 ped_id~%ford_msgs/Pose2DStamped[] traj~%float32 value #Used for PREDICTION types~%uint8 type ~%#ENUM for type~%uint8 OBSERVATION=0~%uint8 PREDICTION_LINEAR=1~%uint8 PREDICTION_GP=2~%================================================================================~%MSG: ford_msgs/Pose2DStamped~%std_msgs/Header header~%geometry_msgs/Pose2D pose~%geometry_msgs/Vector3 velocity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PedTraj)))
  "Returns full string definition for message of type 'PedTraj"
  (cl:format cl:nil "uint32 ped_id~%ford_msgs/Pose2DStamped[] traj~%float32 value #Used for PREDICTION types~%uint8 type ~%#ENUM for type~%uint8 OBSERVATION=0~%uint8 PREDICTION_LINEAR=1~%uint8 PREDICTION_GP=2~%================================================================================~%MSG: ford_msgs/Pose2DStamped~%std_msgs/Header header~%geometry_msgs/Pose2D pose~%geometry_msgs/Vector3 velocity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PedTraj>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PedTraj>))
  "Converts a ROS message object to a list"
  (cl:list 'PedTraj
    (cl:cons ':ped_id (ped_id msg))
    (cl:cons ':traj (traj msg))
    (cl:cons ':value (value msg))
    (cl:cons ':type (type msg))
))
