; Auto-generated. Do not edit!


(cl:in-package ford_msgs-msg)


;//! \htmlinclude ClusterHit.msg.html

(cl:defclass <ClusterHit> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ped_id
    :reader ped_id
    :initarg :ped_id
    :type cl:integer
    :initform 0)
   (likelihood
    :reader likelihood
    :initarg :likelihood
    :type cl:float
    :initform 0.0))
)

(cl:defclass ClusterHit (<ClusterHit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterHit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterHit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ford_msgs-msg:<ClusterHit> is deprecated: use ford_msgs-msg:ClusterHit instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ClusterHit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:header-val is deprecated.  Use ford_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ped_id-val :lambda-list '(m))
(cl:defmethod ped_id-val ((m <ClusterHit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:ped_id-val is deprecated.  Use ford_msgs-msg:ped_id instead.")
  (ped_id m))

(cl:ensure-generic-function 'likelihood-val :lambda-list '(m))
(cl:defmethod likelihood-val ((m <ClusterHit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:likelihood-val is deprecated.  Use ford_msgs-msg:likelihood instead.")
  (likelihood m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterHit>) ostream)
  "Serializes a message object of type '<ClusterHit>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ped_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ped_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ped_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ped_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'likelihood))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterHit>) istream)
  "Deserializes a message object of type '<ClusterHit>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ped_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ped_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ped_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ped_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'likelihood) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterHit>)))
  "Returns string type for a message object of type '<ClusterHit>"
  "ford_msgs/ClusterHit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterHit)))
  "Returns string type for a message object of type 'ClusterHit"
  "ford_msgs/ClusterHit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterHit>)))
  "Returns md5sum for a message object of type '<ClusterHit>"
  "22a0a4f41b3e5b3041fdd6c1be6ae884")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterHit)))
  "Returns md5sum for a message object of type 'ClusterHit"
  "22a0a4f41b3e5b3041fdd6c1be6ae884")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterHit>)))
  "Returns full string definition for message of type '<ClusterHit>"
  (cl:format cl:nil "Header header~%uint32 ped_id~%float32 likelihood~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterHit)))
  "Returns full string definition for message of type 'ClusterHit"
  (cl:format cl:nil "Header header~%uint32 ped_id~%float32 likelihood~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterHit>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterHit>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterHit
    (cl:cons ':header (header msg))
    (cl:cons ':ped_id (ped_id msg))
    (cl:cons ':likelihood (likelihood msg))
))
