;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::GetPose)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'GetPose (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::GETPOSE")
  (make-package "JETAUTO_INTERFACES::GETPOSE"))
(unless (find-package "JETAUTO_INTERFACES::GETPOSEREQUEST")
  (make-package "JETAUTO_INTERFACES::GETPOSEREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::GETPOSERESPONSE")
  (make-package "JETAUTO_INTERFACES::GETPOSERESPONSE"))

(in-package "ROS")





(defclass jetauto_interfaces::GetPoseRequest
  :super ros::object
  :slots ())

(defmethod jetauto_interfaces::GetPoseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass jetauto_interfaces::GetPoseResponse
  :super ros::object
  :slots (_success _position _orientation ))

(defmethod jetauto_interfaces::GetPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _position __position)
   (setq _orientation __orientation)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32[] _position
    (* 4    (length _position)) 4
    ;; float32[] _orientation
    (* 4    (length _orientation)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _orientation
     (write-long (length _orientation) s)
     (dotimes (i (length _orientation))
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _orientation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orientation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass jetauto_interfaces::GetPose
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::GetPose :md5sum-) "15f95f5538fad94dd79708adc832f5c7")
(setf (get jetauto_interfaces::GetPose :datatype-) "jetauto_interfaces/GetPose")
(setf (get jetauto_interfaces::GetPose :request) jetauto_interfaces::GetPoseRequest)
(setf (get jetauto_interfaces::GetPose :response) jetauto_interfaces::GetPoseResponse)

(defmethod jetauto_interfaces::GetPoseRequest
  (:response () (instance jetauto_interfaces::GetPoseResponse :init)))

(setf (get jetauto_interfaces::GetPoseRequest :md5sum-) "15f95f5538fad94dd79708adc832f5c7")
(setf (get jetauto_interfaces::GetPoseRequest :datatype-) "jetauto_interfaces/GetPoseRequest")
(setf (get jetauto_interfaces::GetPoseRequest :definition-)
      "---
bool success
float32[] position
float32[] orientation

")

(setf (get jetauto_interfaces::GetPoseResponse :md5sum-) "15f95f5538fad94dd79708adc832f5c7")
(setf (get jetauto_interfaces::GetPoseResponse :datatype-) "jetauto_interfaces/GetPoseResponse")
(setf (get jetauto_interfaces::GetPoseResponse :definition-)
      "---
bool success
float32[] position
float32[] orientation

")



(provide :jetauto_interfaces/GetPose "15f95f5538fad94dd79708adc832f5c7")


