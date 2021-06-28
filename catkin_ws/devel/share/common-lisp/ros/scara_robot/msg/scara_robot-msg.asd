
(cl:in-package :asdf)

(defsystem "scara_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "scara_robot_pose" :depends-on ("_package_scara_robot_pose"))
    (:file "_package_scara_robot_pose" :depends-on ("_package"))
  ))