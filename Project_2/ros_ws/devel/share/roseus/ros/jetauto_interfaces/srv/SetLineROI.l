;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetLineROI)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetLineROI (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETLINEROI")
  (make-package "JETAUTO_INTERFACES::SETLINEROI"))
(unless (find-package "JETAUTO_INTERFACES::SETLINEROIREQUEST")
  (make-package "JETAUTO_INTERFACES::SETLINEROIREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETLINEROIRESPONSE")
  (make-package "JETAUTO_INTERFACES::SETLINEROIRESPONSE"))

(in-package "ROS")





(defclass jetauto_interfaces::SetLineROIRequest
  :super ros::object
  :slots (_data ))

(defmethod jetauto_interfaces::SetLineROIRequest
  (:init
   (&key
    ((:data __data) (instance jetauto_interfaces::LineROI :init))
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
    ;; jetauto_interfaces/LineROI _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetauto_interfaces/LineROI _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetauto_interfaces/LineROI _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetLineROIResponse
  :super ros::object
  :slots (_success _message ))

(defmethod jetauto_interfaces::SetLineROIResponse
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

(defclass jetauto_interfaces::SetLineROI
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetLineROI :md5sum-) "35e53feacfaccfdf6f9964472d9f693d")
(setf (get jetauto_interfaces::SetLineROI :datatype-) "jetauto_interfaces/SetLineROI")
(setf (get jetauto_interfaces::SetLineROI :request) jetauto_interfaces::SetLineROIRequest)
(setf (get jetauto_interfaces::SetLineROI :response) jetauto_interfaces::SetLineROIResponse)

(defmethod jetauto_interfaces::SetLineROIRequest
  (:response () (instance jetauto_interfaces::SetLineROIResponse :init)))

(setf (get jetauto_interfaces::SetLineROIRequest :md5sum-) "35e53feacfaccfdf6f9964472d9f693d")
(setf (get jetauto_interfaces::SetLineROIRequest :datatype-) "jetauto_interfaces/SetLineROIRequest")
(setf (get jetauto_interfaces::SetLineROIRequest :definition-)
      "jetauto_interfaces/LineROI data

================================================================================
MSG: jetauto_interfaces/LineROI
jetauto_interfaces/ROI roi_up
jetauto_interfaces/ROI roi_center
jetauto_interfaces/ROI roi_down

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

(setf (get jetauto_interfaces::SetLineROIResponse :md5sum-) "35e53feacfaccfdf6f9964472d9f693d")
(setf (get jetauto_interfaces::SetLineROIResponse :datatype-) "jetauto_interfaces/SetLineROIResponse")
(setf (get jetauto_interfaces::SetLineROIResponse :definition-)
      "jetauto_interfaces/LineROI data

================================================================================
MSG: jetauto_interfaces/LineROI
jetauto_interfaces/ROI roi_up
jetauto_interfaces/ROI roi_center
jetauto_interfaces/ROI roi_down

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



(provide :jetauto_interfaces/SetLineROI "35e53feacfaccfdf6f9964472d9f693d")


