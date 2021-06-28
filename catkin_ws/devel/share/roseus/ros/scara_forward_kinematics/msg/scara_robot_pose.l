;; Auto-generated. Do not edit!


(when (boundp 'scara_forward_kinematics::scara_robot_pose)
  (if (not (find-package "SCARA_FORWARD_KINEMATICS"))
    (make-package "SCARA_FORWARD_KINEMATICS"))
  (shadow 'scara_robot_pose (find-package "SCARA_FORWARD_KINEMATICS")))
(unless (find-package "SCARA_FORWARD_KINEMATICS::SCARA_ROBOT_POSE")
  (make-package "SCARA_FORWARD_KINEMATICS::SCARA_ROBOT_POSE"))

(in-package "ROS")
;;//! \htmlinclude scara_robot_pose.msg.html


(defclass scara_forward_kinematics::scara_robot_pose
  :super ros::object
  :slots (_x _y _z _phi _theta _psi ))

(defmethod scara_forward_kinematics::scara_robot_pose
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:phi __phi) 0.0)
    ((:theta __theta) 0.0)
    ((:psi __psi) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _phi (float __phi))
   (setq _theta (float __theta))
   (setq _psi (float __psi))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _phi
    8
    ;; float64 _theta
    8
    ;; float64 _psi
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phi
     (setq _phi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi
     (setq _psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get scara_forward_kinematics::scara_robot_pose :md5sum-) "28833ad46fe44d5123a6573471f79229")
(setf (get scara_forward_kinematics::scara_robot_pose :datatype-) "scara_forward_kinematics/scara_robot_pose")
(setf (get scara_forward_kinematics::scara_robot_pose :definition-)
      "float64 x
float64 y
float64 z
float64 phi
float64 theta
float64 psi
")



(provide :scara_forward_kinematics/scara_robot_pose "28833ad46fe44d5123a6573471f79229")


