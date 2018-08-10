; Auto-generated. Do not edit!


(cl:in-package ford_msgs-msg)


;//! \htmlinclude NNActions.msg.html

(cl:defclass <NNActions> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angles
    :reader angles
    :initarg :angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (max_speeds
    :reader max_speeds
    :initarg :max_speeds
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (subgoal
    :reader subgoal
    :initarg :subgoal
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (path_lengths
    :reader path_lengths
    :initarg :path_lengths
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (current_cost_to_go
    :reader current_cost_to_go
    :initarg :current_cost_to_go
    :type cl:float
    :initform 0.0))
)

(cl:defclass NNActions (<NNActions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NNActions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NNActions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ford_msgs-msg:<NNActions> is deprecated: use ford_msgs-msg:NNActions instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NNActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:header-val is deprecated.  Use ford_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <NNActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:angles-val is deprecated.  Use ford_msgs-msg:angles instead.")
  (angles m))

(cl:ensure-generic-function 'max_speeds-val :lambda-list '(m))
(cl:defmethod max_speeds-val ((m <NNActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:max_speeds-val is deprecated.  Use ford_msgs-msg:max_speeds instead.")
  (max_speeds m))

(cl:ensure-generic-function 'subgoal-val :lambda-list '(m))
(cl:defmethod subgoal-val ((m <NNActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:subgoal-val is deprecated.  Use ford_msgs-msg:subgoal instead.")
  (subgoal m))

(cl:ensure-generic-function 'path_lengths-val :lambda-list '(m))
(cl:defmethod path_lengths-val ((m <NNActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:path_lengths-val is deprecated.  Use ford_msgs-msg:path_lengths instead.")
  (path_lengths m))

(cl:ensure-generic-function 'current_cost_to_go-val :lambda-list '(m))
(cl:defmethod current_cost_to_go-val ((m <NNActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:current_cost_to_go-val is deprecated.  Use ford_msgs-msg:current_cost_to_go instead.")
  (current_cost_to_go m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NNActions>) ostream)
  "Serializes a message object of type '<NNActions>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'max_speeds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'max_speeds))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'subgoal) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_lengths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'path_lengths))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_cost_to_go))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NNActions>) istream)
  "Deserializes a message object of type '<NNActions>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'max_speeds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'max_speeds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'subgoal) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_lengths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_lengths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_cost_to_go) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NNActions>)))
  "Returns string type for a message object of type '<NNActions>"
  "ford_msgs/NNActions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NNActions)))
  "Returns string type for a message object of type 'NNActions"
  "ford_msgs/NNActions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NNActions>)))
  "Returns md5sum for a message object of type '<NNActions>"
  "baed85cab20cbff17eb30c95cd61ef93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NNActions)))
  "Returns md5sum for a message object of type 'NNActions"
  "baed85cab20cbff17eb30c95cd61ef93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NNActions>)))
  "Returns full string definition for message of type '<NNActions>"
  (cl:format cl:nil "std_msgs/Header header~%float32[] angles~%float32[] max_speeds~%geometry_msgs/Pose2D subgoal~%float32[] path_lengths~%float32 current_cost_to_go~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NNActions)))
  "Returns full string definition for message of type 'NNActions"
  (cl:format cl:nil "std_msgs/Header header~%float32[] angles~%float32[] max_speeds~%geometry_msgs/Pose2D subgoal~%float32[] path_lengths~%float32 current_cost_to_go~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NNActions>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'max_speeds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'subgoal))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_lengths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NNActions>))
  "Converts a ROS message object to a list"
  (cl:list 'NNActions
    (cl:cons ':header (header msg))
    (cl:cons ':angles (angles msg))
    (cl:cons ':max_speeds (max_speeds msg))
    (cl:cons ':subgoal (subgoal msg))
    (cl:cons ':path_lengths (path_lengths msg))
    (cl:cons ':current_cost_to_go (current_cost_to_go msg))
))
