;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetCircleROI)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetCircleROI (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETCIRCLEROI")
  (make-package "JETAUTO_INTERFACES::SETCIRCLEROI"))
(unless (find-package "JETAUTO_INTERFACES::SETCIRCLEROIREQUEST")
  (make-package "JETAUTO_INTERFACES::SETCIRCLEROIREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETCIRCLEROIRESPONSE")
  (make-package "JETAUTO_INTERFACES::SETCIRCLEROIRESPONSE"))

(in-package "ROS")





(defclass jetauto_interfaces::SetCircleROIRequest
  :super ros::object
  :slots (_data ))

(defmethod jetauto_interfaces::SetCircleROIRequest
  (:init
   (&key
    ((:data __data) (instance jetauto_interfaces::ROI :init))
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
    ;; jetauto_interfaces/ROI _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetauto_interfaces/ROI _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetauto_interfaces/ROI _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetCircleROIResponse
  :super ros::object
  :slots (_success _message ))

(defmethod jetauto_interfaces::SetCircleROIResponse
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

(defclass jetauto_interfaces::SetCircleROI
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetCircleROI :md5sum-) "eff5af47147109863af37e6078d2eeb8")
(setf (get jetauto_interfaces::SetCircleROI :datatype-) "jetauto_interfaces/SetCircleROI")
(setf (get jetauto_interfaces::SetCircleROI :request) jetauto_interfaces::SetCircleROIRequest)
(setf (get jetauto_interfaces::SetCircleROI :response) jetauto_interfaces::SetCircleROIResponse)

(defmethod jetauto_interfaces::SetCircleROIRequest
  (:response () (instance jetauto_interfaces::SetCircleROIResponse :init)))

(setf (get jetauto_interfaces::SetCircleROIRequest :md5sum-) "eff5af47147109863af37e6078d2eeb8")
(setf (get jetauto_interfaces::SetCircleROIRequest :datatype-) "jetauto_interfaces/SetCircleROIRequest")
(setf (get jetauto_interfaces::SetCircleROIRequest :definition-)
      "jetauto_interfaces/ROI data

================================================================================
MSG: jetauto_interfaces/ROI
int16 y_min
int16 y_max
int16 x_min
int16 x_max
float32 scale
---
bool success
string message

")

(setf (get jetauto_interfaces::SetCircleROIResponse :md5sum-) "eff5af47147109863af37e6078d2eeb8")
(setf (get jetauto_interfaces::SetCircleROIResponse :datatype-) "jetauto_interfaces/SetCircleROIResponse")
(setf (get jetauto_interfaces::SetCircleROIResponse :definition-)
      "jetauto_interfaces/ROI data

================================================================================
MSG: jetauto_interfaces/ROI
int16 y_min
int16 y_max
int16 x_min
int16 x_max
float32 scale
---
bool success
string message

")



(provide :jetauto_interfaces/SetCircleROI "eff5af47147109863af37e6078d2eeb8")


