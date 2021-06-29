;; Auto-generated. Do not edit!


(when (boundp 'scara_inverse_kinematics::poseJoints)
  (if (not (find-package "SCARA_INVERSE_KINEMATICS"))
    (make-package "SCARA_INVERSE_KINEMATICS"))
  (shadow 'poseJoints (find-package "SCARA_INVERSE_KINEMATICS")))
(unless (find-package "SCARA_INVERSE_KINEMATICS::POSEJOINTS")
  (make-package "SCARA_INVERSE_KINEMATICS::POSEJOINTS"))
(unless (find-package "SCARA_INVERSE_KINEMATICS::POSEJOINTSREQUEST")
  (make-package "SCARA_INVERSE_KINEMATICS::POSEJOINTSREQUEST"))
(unless (find-package "SCARA_INVERSE_KINEMATICS::POSEJOINTSRESPONSE")
  (make-package "SCARA_INVERSE_KINEMATICS::POSEJOINTSRESPONSE"))

(in-package "ROS")





(defclass scara_inverse_kinematics::poseJointsRequest
  :super ros::object
  :slots (_x _y _z ))

(defmethod scara_inverse_kinematics::poseJointsRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
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
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
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
   ;;
   self)
  )

(defclass scara_inverse_kinematics::poseJointsResponse
  :super ros::object
  :slots (_theta1 _theta2 _d3 ))

(defmethod scara_inverse_kinematics::poseJointsResponse
  (:init
   (&key
    ((:theta1 __theta1) 0.0)
    ((:theta2 __theta2) 0.0)
    ((:d3 __d3) 0.0)
    )
   (send-super :init)
   (setq _theta1 (float __theta1))
   (setq _theta2 (float __theta2))
   (setq _d3 (float __d3))
   self)
  (:theta1
   (&optional __theta1)
   (if __theta1 (setq _theta1 __theta1)) _theta1)
  (:theta2
   (&optional __theta2)
   (if __theta2 (setq _theta2 __theta2)) _theta2)
  (:d3
   (&optional __d3)
   (if __d3 (setq _d3 __d3)) _d3)
  (:serialization-length
   ()
   (+
    ;; float64 _theta1
    8
    ;; float64 _theta2
    8
    ;; float64 _d3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _theta1
       (sys::poke _theta1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta2
       (sys::poke _theta2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d3
       (sys::poke _d3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _theta1
     (setq _theta1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta2
     (setq _theta2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d3
     (setq _d3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_inverse_kinematics::poseJoints
  :super ros::object
  :slots ())

(setf (get scara_inverse_kinematics::poseJoints :md5sum-) "cabb4d8365c1affb33eb07e1622932fc")
(setf (get scara_inverse_kinematics::poseJoints :datatype-) "scara_inverse_kinematics/poseJoints")
(setf (get scara_inverse_kinematics::poseJoints :request) scara_inverse_kinematics::poseJointsRequest)
(setf (get scara_inverse_kinematics::poseJoints :response) scara_inverse_kinematics::poseJointsResponse)

(defmethod scara_inverse_kinematics::poseJointsRequest
  (:response () (instance scara_inverse_kinematics::poseJointsResponse :init)))

(setf (get scara_inverse_kinematics::poseJointsRequest :md5sum-) "cabb4d8365c1affb33eb07e1622932fc")
(setf (get scara_inverse_kinematics::poseJointsRequest :datatype-) "scara_inverse_kinematics/poseJointsRequest")
(setf (get scara_inverse_kinematics::poseJointsRequest :definition-)
      "float64 x
float64 y
float64 z
---
float64 theta1
float64 theta2
float64 d3

")

(setf (get scara_inverse_kinematics::poseJointsResponse :md5sum-) "cabb4d8365c1affb33eb07e1622932fc")
(setf (get scara_inverse_kinematics::poseJointsResponse :datatype-) "scara_inverse_kinematics/poseJointsResponse")
(setf (get scara_inverse_kinematics::poseJointsResponse :definition-)
      "float64 x
float64 y
float64 z
---
float64 theta1
float64 theta2
float64 d3

")



(provide :scara_inverse_kinematics/poseJoints "cabb4d8365c1affb33eb07e1622932fc")


