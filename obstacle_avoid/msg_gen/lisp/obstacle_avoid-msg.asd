
(cl:in-package :asdf)

(defsystem "obstacle_avoid-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Agent" :depends-on ("_package_Agent"))
    (:file "_package_Agent" :depends-on ("_package"))
    (:file "AgentList" :depends-on ("_package_AgentList"))
    (:file "_package_AgentList" :depends-on ("_package"))
  ))