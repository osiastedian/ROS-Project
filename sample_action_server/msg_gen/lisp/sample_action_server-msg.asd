
(cl:in-package :asdf)

(defsystem "sample_action_server-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TurnGoal" :depends-on ("_package_TurnGoal"))
    (:file "_package_TurnGoal" :depends-on ("_package"))
    (:file "TurnResult" :depends-on ("_package_TurnResult"))
    (:file "_package_TurnResult" :depends-on ("_package"))
    (:file "TurnAction" :depends-on ("_package_TurnAction"))
    (:file "_package_TurnAction" :depends-on ("_package"))
    (:file "TurnActionResult" :depends-on ("_package_TurnActionResult"))
    (:file "_package_TurnActionResult" :depends-on ("_package"))
    (:file "TurnActionFeedback" :depends-on ("_package_TurnActionFeedback"))
    (:file "_package_TurnActionFeedback" :depends-on ("_package"))
    (:file "TurnActionGoal" :depends-on ("_package_TurnActionGoal"))
    (:file "_package_TurnActionGoal" :depends-on ("_package"))
    (:file "TurnFeedback" :depends-on ("_package_TurnFeedback"))
    (:file "_package_TurnFeedback" :depends-on ("_package"))
  ))