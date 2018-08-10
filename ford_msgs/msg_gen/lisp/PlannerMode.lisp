; Auto-generated. Do not edit!


(cl:in-package ford_msgs-msg)


;//! \htmlinclude PlannerMode.msg.html

(cl:defclass <PlannerMode> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlannerMode (<PlannerMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ford_msgs-msg:<PlannerMode> is deprecated: use ford_msgs-msg:PlannerMode instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlannerMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:header-val is deprecated.  Use ford_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <PlannerMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:mode-val is deprecated.  Use ford_msgs-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlannerMode>)))
    "Constants for message type '<PlannerMode>"
  '((:DIFF_MP . 0)
    (:NN . 1)
    (:SPIN_IN_PLACE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlannerMode)))
    "Constants for message type 'PlannerMode"
  '((:DIFF_MP . 0)
    (:NN . 1)
    (:SPIN_IN_PLACE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerMode>) ostream)
  "Serializes a message object of type '<PlannerMode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerMode>) istream)
  "Deserializes a message object of type '<PlannerMode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerMode>)))
  "Returns string type for a message object of type '<PlannerMode>"
  "ford_msgs/PlannerMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerMode)))
  "Returns string type for a message object of type 'PlannerMode"
  "ford_msgs/PlannerMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerMode>)))
  "Returns md5sum for a message object of type '<PlannerMode>"
  "42413d5e8ea95803185fd741f1d30a4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerMode)))
  "Returns md5sum for a message object of type 'PlannerMode"
  "42413d5e8ea95803185fd741f1d30a4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerMode>)))
  "Returns full string definition for message of type '<PlannerMode>"
  (cl:format cl:nil "Header header~%uint8 mode~%uint8 DIFF_MP=0~%uint8 NN=1~%uint8 SPIN_IN_PLACE=2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerMode)))
  "Returns full string definition for message of type 'PlannerMode"
  (cl:format cl:nil "Header header~%uint8 mode~%uint8 DIFF_MP=0~%uint8 NN=1~%uint8 SPIN_IN_PLACE=2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerMode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerMode>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerMode
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
))
