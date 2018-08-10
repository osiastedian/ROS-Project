; Auto-generated. Do not edit!


(cl:in-package ford_msgs-msg)


;//! \htmlinclude PedTrajVec.msg.html

(cl:defclass <PedTrajVec> (roslisp-msg-protocol:ros-message)
  ((ped_traj_vec
    :reader ped_traj_vec
    :initarg :ped_traj_vec
    :type (cl:vector ford_msgs-msg:PedTraj)
   :initform (cl:make-array 0 :element-type 'ford_msgs-msg:PedTraj :initial-element (cl:make-instance 'ford_msgs-msg:PedTraj))))
)

(cl:defclass PedTrajVec (<PedTrajVec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PedTrajVec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PedTrajVec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ford_msgs-msg:<PedTrajVec> is deprecated: use ford_msgs-msg:PedTrajVec instead.")))

(cl:ensure-generic-function 'ped_traj_vec-val :lambda-list '(m))
(cl:defmethod ped_traj_vec-val ((m <PedTrajVec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ford_msgs-msg:ped_traj_vec-val is deprecated.  Use ford_msgs-msg:ped_traj_vec instead.")
  (ped_traj_vec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PedTrajVec>) ostream)
  "Serializes a message object of type '<PedTrajVec>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ped_traj_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ped_traj_vec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PedTrajVec>) istream)
  "Deserializes a message object of type '<PedTrajVec>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ped_traj_vec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ped_traj_vec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ford_msgs-msg:PedTraj))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PedTrajVec>)))
  "Returns string type for a message object of type '<PedTrajVec>"
  "ford_msgs/PedTrajVec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PedTrajVec)))
  "Returns string type for a message object of type 'PedTrajVec"
  "ford_msgs/PedTrajVec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PedTrajVec>)))
  "Returns md5sum for a message object of type '<PedTrajVec>"
  "05f33aed1bfc6d0d35110034d9c56bfa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PedTrajVec)))
  "Returns md5sum for a message object of type 'PedTrajVec"
  "05f33aed1bfc6d0d35110034d9c56bfa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PedTrajVec>)))
  "Returns full string definition for message of type '<PedTrajVec>"
  (cl:format cl:nil "ford_msgs/PedTraj[] ped_traj_vec~%================================================================================~%MSG: ford_msgs/PedTraj~%uint32 ped_id~%ford_msgs/Pose2DStamped[] traj~%float32 value #Used for PREDICTION types~%uint8 type ~%#ENUM for type~%uint8 OBSERVATION=0~%uint8 PREDICTION_LINEAR=1~%uint8 PREDICTION_GP=2~%================================================================================~%MSG: ford_msgs/Pose2DStamped~%std_msgs/Header header~%geometry_msgs/Pose2D pose~%geometry_msgs/Vector3 velocity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PedTrajVec)))
  "Returns full string definition for message of type 'PedTrajVec"
  (cl:format cl:nil "ford_msgs/PedTraj[] ped_traj_vec~%================================================================================~%MSG: ford_msgs/PedTraj~%uint32 ped_id~%ford_msgs/Pose2DStamped[] traj~%float32 value #Used for PREDICTION types~%uint8 type ~%#ENUM for type~%uint8 OBSERVATION=0~%uint8 PREDICTION_LINEAR=1~%uint8 PREDICTION_GP=2~%================================================================================~%MSG: ford_msgs/Pose2DStamped~%std_msgs/Header header~%geometry_msgs/Pose2D pose~%geometry_msgs/Vector3 velocity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PedTrajVec>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ped_traj_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PedTrajVec>))
  "Converts a ROS message object to a list"
  (cl:list 'PedTrajVec
    (cl:cons ':ped_traj_vec (ped_traj_vec msg))
))
