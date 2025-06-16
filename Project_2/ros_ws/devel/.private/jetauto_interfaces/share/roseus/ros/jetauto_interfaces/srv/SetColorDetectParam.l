;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetColorDetectParam)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetColorDetectParam (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETCOLORDETECTPARAM")
  (make-package "JETAUTO_INTERFACES::SETCOLORDETECTPARAM"))
(unless (find-package "JETAUTO_INTERFACES::SETCOLORDETECTPARAMREQUEST")
  (make-package "JETAUTO_INTERFACES::SETCOLORDETECTPARAMREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETCOLORDETECTPARAMRESPONSE")
  (make-package "JETAUTO_INTERFACES::SETCOLORDETECTPARAMRESPONSE"))

(in-package "ROS")





(defclass jetauto_interfaces::SetColorDetectParamRequest
  :super ros::object
  :slots (_data ))

(defmethod jetauto_interfaces::SetColorDetectParamRequest
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance jetauto_interfaces::ColorDetect :init) r)) r))
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
    ;; jetauto_interfaces/ColorDetect[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetauto_interfaces/ColorDetect[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetauto_interfaces/ColorDetect[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance jetauto_interfaces::ColorDetect :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetColorDetectParamResponse
  :super ros::object
  :slots (_success _message ))

(defmethod jetauto_interfaces::SetColorDetectParamResponse
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

(defclass jetauto_interfaces::SetColorDetectParam
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetColorDetectParam :md5sum-) "0ec73f9b73674c15d92cf45372dbab3f")
(setf (get jetauto_interfaces::SetColorDetectParam :datatype-) "jetauto_interfaces/SetColorDetectParam")
(setf (get jetauto_interfaces::SetColorDetectParam :request) jetauto_interfaces::SetColorDetectParamRequest)
(setf (get jetauto_interfaces::SetColorDetectParam :response) jetauto_interfaces::SetColorDetectParamResponse)

(defmethod jetauto_interfaces::SetColorDetectParamRequest
  (:response () (instance jetauto_interfaces::SetColorDetectParamResponse :init)))

(setf (get jetauto_interfaces::SetColorDetectParamRequest :md5sum-) "0ec73f9b73674c15d92cf45372dbab3f")
(setf (get jetauto_interfaces::SetColorDetectParamRequest :datatype-) "jetauto_interfaces/SetColorDetectParamRequest")
(setf (get jetauto_interfaces::SetColorDetectParamRequest :definition-)
      "jetauto_interfaces/ColorDetect[] data

================================================================================
MSG: jetauto_interfaces/ColorDetect
string color_name
string detect_type
---
bool success
string message

")

(setf (get jetauto_interfaces::SetColorDetectParamResponse :md5sum-) "0ec73f9b73674c15d92cf45372dbab3f")
(setf (get jetauto_interfaces::SetColorDetectParamResponse :datatype-) "jetauto_interfaces/SetColorDetectParamResponse")
(setf (get jetauto_interfaces::SetColorDetectParamResponse :definition-)
      "jetauto_interfaces/ColorDetect[] data

================================================================================
MSG: jetauto_interfaces/ColorDetect
string color_name
string detect_type
---
bool success
string message

")



(provide :jetauto_interfaces/SetColorDetectParam "0ec73f9b73674c15d92cf45372dbab3f")


