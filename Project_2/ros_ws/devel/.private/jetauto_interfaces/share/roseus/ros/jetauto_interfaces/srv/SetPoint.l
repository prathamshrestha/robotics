;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetPoint)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetPoint (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETPOINT")
  (make-package "JETAUTO_INTERFACES::SETPOINT"))
(unless (find-package "JETAUTO_INTERFACES::SETPOINTREQUEST")
  (make-package "JETAUTO_INTERFACES::SETPOINTREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETPOINTRESPONSE")
  (make-package "JETAUTO_INTERFACES::SETPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass jetauto_interfaces::SetPointRequest
  :super ros::object
  :slots (_data ))

(defmethod jetauto_interfaces::SetPointRequest
  (:init
   (&key
    ((:data __data) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetPointResponse
  :super ros::object
  :slots (_success _message ))

(defmethod jetauto_interfaces::SetPointResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetPoint
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetPoint :md5sum-) "efb349b09ac9e0d4c8ef08d9ad9508b4")
(setf (get jetauto_interfaces::SetPoint :datatype-) "jetauto_interfaces/SetPoint")
(setf (get jetauto_interfaces::SetPoint :request) jetauto_interfaces::SetPointRequest)
(setf (get jetauto_interfaces::SetPoint :response) jetauto_interfaces::SetPointResponse)

(defmethod jetauto_interfaces::SetPointRequest
  (:response () (instance jetauto_interfaces::SetPointResponse :init)))

(setf (get jetauto_interfaces::SetPointRequest :md5sum-) "efb349b09ac9e0d4c8ef08d9ad9508b4")
(setf (get jetauto_interfaces::SetPointRequest :datatype-) "jetauto_interfaces/SetPointRequest")
(setf (get jetauto_interfaces::SetPointRequest :definition-)
      "geometry_msgs/Point data

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
string message

")

(setf (get jetauto_interfaces::SetPointResponse :md5sum-) "efb349b09ac9e0d4c8ef08d9ad9508b4")
(setf (get jetauto_interfaces::SetPointResponse :datatype-) "jetauto_interfaces/SetPointResponse")
(setf (get jetauto_interfaces::SetPointResponse :definition-)
      "geometry_msgs/Point data

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
string message

")



(provide :jetauto_interfaces/SetPoint "efb349b09ac9e0d4c8ef08d9ad9508b4")


