
(cl:in-package :asdf)

(defsystem "ford_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SSDObjs" :depends-on ("_package_SSDObjs"))
    (:file "_package_SSDObjs" :depends-on ("_package"))
    (:file "ped_detection" :depends-on ("_package_ped_detection"))
    (:file "_package_ped_detection" :depends-on ("_package"))
    (:file "ImageObj" :depends-on ("_package_ImageObj"))
    (:file "_package_ImageObj" :depends-on ("_package"))
    (:file "PlannerMode" :depends-on ("_package_PlannerMode"))
    (:file "_package_PlannerMode" :depends-on ("_package"))
    (:file "Pose2DStamped" :depends-on ("_package_Pose2DStamped"))
    (:file "_package_Pose2DStamped" :depends-on ("_package"))
    (:file "PedTraj" :depends-on ("_package_PedTraj"))
    (:file "_package_PedTraj" :depends-on ("_package"))
    (:file "potential_detections" :depends-on ("_package_potential_detections"))
    (:file "_package_potential_detections" :depends-on ("_package"))
    (:file "ImageRect" :depends-on ("_package_ImageRect"))
    (:file "_package_ImageRect" :depends-on ("_package"))
    (:file "PedTrajVec" :depends-on ("_package_PedTrajVec"))
    (:file "_package_PedTrajVec" :depends-on ("_package"))
    (:file "ClusterHit" :depends-on ("_package_ClusterHit"))
    (:file "_package_ClusterHit" :depends-on ("_package"))
    (:file "NNActions" :depends-on ("_package_NNActions"))
    (:file "_package_NNActions" :depends-on ("_package"))
    (:file "Clusters" :depends-on ("_package_Clusters"))
    (:file "_package_Clusters" :depends-on ("_package"))
  ))