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
  :slots (_r11 _r12 _r13 _r21 _r22 _r23 _r31 _r32 _r33 _x _y _z ))

(defmethod scara_inverse_kinematics::poseJointsRequest
  (:init
   (&key
    ((:r11 __r11) 0.0)
    ((:r12 __r12) 0.0)
    ((:r13 __r13) 0.0)
    ((:r21 __r21) 0.0)
    ((:r22 __r22) 0.0)
    ((:r23 __r23) 0.0)
    ((:r31 __r31) 0.0)
    ((:r32 __r32) 0.0)
    ((:r33 __r33) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _r11 (float __r11))
   (setq _r12 (float __r12))
   (setq _r13 (float __r13))
   (setq _r21 (float __r21))
   (setq _r22 (float __r22))
   (setq _r23 (float __r23))
   (setq _r31 (float __r31))
   (setq _r32 (float __r32))
   (setq _r33 (float __r33))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:r11
   (&optional __r11)
   (if __r11 (setq _r11 __r11)) _r11)
  (:r12
   (&optional __r12)
   (if __r12 (setq _r12 __r12)) _r12)
  (:r13
   (&optional __r13)
   (if __r13 (setq _r13 __r13)) _r13)
  (:r21
   (&optional __r21)
   (if __r21 (setq _r21 __r21)) _r21)
  (:r22
   (&optional __r22)
   (if __r22 (setq _r22 __r22)) _r22)
  (:r23
   (&optional __r23)
   (if __r23 (setq _r23 __r23)) _r23)
  (:r31
   (&optional __r31)
   (if __r31 (setq _r31 __r31)) _r31)
  (:r32
   (&optional __r32)
   (if __r32 (setq _r32 __r32)) _r32)
  (:r33
   (&optional __r33)
   (if __r33 (setq _r33 __r33)) _r33)
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
    ;; float64 _r11
    8
    ;; float64 _r12
    8
    ;; float64 _r13
    8
    ;; float64 _r21
    8
    ;; float64 _r22
    8
    ;; float64 _r23
    8
    ;; float64 _r31
    8
    ;; float64 _r32
    8
    ;; float64 _r33
    8
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
     ;; float64 _r11
       (sys::poke _r11 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r12
       (sys::poke _r12 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r13
       (sys::poke _r13 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r21
       (sys::poke _r21 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r22
       (sys::poke _r22 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r23
       (sys::poke _r23 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r31
       (sys::poke _r31 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r32
       (sys::poke _r32 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r33
       (sys::poke _r33 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _r11
     (setq _r11 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r12
     (setq _r12 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r13
     (setq _r13 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r21
     (setq _r21 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r22
     (setq _r22 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r23
     (setq _r23 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r31
     (setq _r31 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r32
     (setq _r32 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r33
     (setq _r33 (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(setf (get scara_inverse_kinematics::poseJoints :md5sum-) "998f1ed04f61522c2efafb2090670f73")
(setf (get scara_inverse_kinematics::poseJoints :datatype-) "scara_inverse_kinematics/poseJoints")
(setf (get scara_inverse_kinematics::poseJoints :request) scara_inverse_kinematics::poseJointsRequest)
(setf (get scara_inverse_kinematics::poseJoints :response) scara_inverse_kinematics::poseJointsResponse)

(defmethod scara_inverse_kinematics::poseJointsRequest
  (:response () (instance scara_inverse_kinematics::poseJointsResponse :init)))

(setf (get scara_inverse_kinematics::poseJointsRequest :md5sum-) "998f1ed04f61522c2efafb2090670f73")
(setf (get scara_inverse_kinematics::poseJointsRequest :datatype-) "scara_inverse_kinematics/poseJointsRequest")
(setf (get scara_inverse_kinematics::poseJointsRequest :definition-)
      "float64 r11
float64 r12
float64 r13
float64 r21
float64 r22
float64 r23
float64 r31
float64 r32
float64 r33
float64 x
float64 y
float64 z
---
float64 theta1
float64 theta2
float64 d3

")

(setf (get scara_inverse_kinematics::poseJointsResponse :md5sum-) "998f1ed04f61522c2efafb2090670f73")
(setf (get scara_inverse_kinematics::poseJointsResponse :datatype-) "scara_inverse_kinematics/poseJointsResponse")
(setf (get scara_inverse_kinematics::poseJointsResponse :definition-)
      "float64 r11
float64 r12
float64 r13
float64 r21
float64 r22
float64 r23
float64 r31
float64 r32
float64 r33
float64 x
float64 y
float64 z
---
float64 theta1
float64 theta2
float64 d3

")



(provide :scara_inverse_kinematics/poseJoints "998f1ed04f61522c2efafb2090670f73")


