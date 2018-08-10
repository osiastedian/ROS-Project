; Auto-generated. Do not edit!


(cl:in-package ford_msgs-msg)


;//! \htmlinclude SSDObjs.msg.html

(cl:defclass <SSDObjs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (avg_colors
    :reader avg_colors
    :initarg :avg_colors
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA)))
   (clusters
    :reader clusters
    :initarg :clusters
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (pincer_obs
    :reader pincer_obs
    :initarg :pincer_obs
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SSDObjs (<SSDObjs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SSDObjs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SSDObjs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ford_msgs-msg:<SSDObjs> is deprecated: use ford_msgs-msg:SSDObjs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SSDObjs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:header-val is deprecated.  Use ford_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'avg_colors-val :lambda-list '(m))
(cl:defmethod avg_colors-val ((m <SSDObjs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:avg_colors-val is deprecated.  Use ford_msgs-msg:avg_colors instead.")
  (avg_colors m))

(cl:ensure-generic-function 'clusters-val :lambda-list '(m))
(cl:defmethod clusters-val ((m <SSDObjs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:clusters-val is deprecated.  Use ford_msgs-msg:clusters instead.")
  (clusters m))

(cl:ensure-generic-function 'pincer_obs-val :lambda-list '(m))
(cl:defmethod pincer_obs-val ((m <SSDObjs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:pincer_obs-val is deprecated.  Use ford_msgs-msg:pincer_obs instead.")
  (pincer_obs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SSDObjs>) ostream)
  "Serializes a message object of type '<SSDObjs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'avg_colors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'avg_colors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clusters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clusters))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pincer_obs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'pincer_obs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SSDObjs>) istream)
  "Deserializes a message object of type '<SSDObjs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'avg_colors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'avg_colors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clusters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clusters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pincer_obs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pincer_obs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SSDObjs>)))
  "Returns string type for a message object of type '<SSDObjs>"
  "ford_msgs/SSDObjs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SSDObjs)))
  "Returns string type for a message object of type 'SSDObjs"
  "ford_msgs/SSDObjs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SSDObjs>)))
  "Returns md5sum for a message object of type '<SSDObjs>"
  "67a4b6ed1fabd91000a0077cb78e4704")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SSDObjs)))
  "Returns md5sum for a message object of type 'SSDObjs"
  "67a4b6ed1fabd91000a0077cb78e4704")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SSDObjs>)))
  "Returns full string definition for message of type '<SSDObjs>"
  (cl:format cl:nil "Header header~%std_msgs/ColorRGBA[] avg_colors~%geometry_msgs/Point[] clusters~%uint8[] pincer_obs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SSDObjs)))
  "Returns full string definition for message of type 'SSDObjs"
  (cl:format cl:nil "Header header~%std_msgs/ColorRGBA[] avg_colors~%geometry_msgs/Point[] clusters~%uint8[] pincer_obs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SSDObjs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avg_colors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clusters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pincer_obs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SSDObjs>))
  "Converts a ROS message object to a list"
  (cl:list 'SSDObjs
    (cl:cons ':header (header msg))
    (cl:cons ':avg_colors (avg_colors msg))
    (cl:cons ':clusters (clusters msg))
    (cl:cons ':pincer_obs (pincer_obs msg))
))
