
(cl:in-package :asdf)

(defsystem "scara_inverse_kinematics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "poseJoints" :depends-on ("_package_poseJoints"))
    (:file "_package_poseJoints" :depends-on ("_package"))
  ))