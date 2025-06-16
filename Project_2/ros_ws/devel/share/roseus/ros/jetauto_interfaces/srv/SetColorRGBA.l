;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetColorRGBA)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetColorRGBA (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETCOLORRGBA")
  (make-package "JETAUTO_INTERFACES::SETCOLORRGBA"))
(unless (find-package "JETAUTO_INTERFACES::SETCOLORRGBAREQUEST")
  (make-package "JETAUTO_INTERFACES::SETCOLORRGBAREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETCOLORRGBARESPONSE")
  (make-package "JETAUTO_INTERFACES::SETCOLORRGBARESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass jetauto_interfaces::SetColorRGBARequest
  :super ros::object
  :slots (_data ))

(defmethod jetauto_interfaces::SetColorRGBARequest
  (:init
   (&key
    ((:data __data) (instance std_msgs::ColorRGBA :init))
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
    ;; std_msgs/ColorRGBA _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetColorRGBAResponse
  :super ros::object
  :slots (_success _message ))

(defmethod jetauto_interfaces::SetColorRGBAResponse
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

(defclass jetauto_interfaces::SetColorRGBA
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetColorRGBA :md5sum-) "283c74850210286a04f67d9713622041")
(setf (get jetauto_interfaces::SetColorRGBA :datatype-) "jetauto_interfaces/SetColorRGBA")
(setf (get jetauto_interfaces::SetColorRGBA :request) jetauto_interfaces::SetColorRGBARequest)
(setf (get jetauto_interfaces::SetColorRGBA :response) jetauto_interfaces::SetColorRGBAResponse)

(defmethod jetauto_interfaces::SetColorRGBARequest
  (:response () (instance jetauto_interfaces::SetColorRGBAResponse :init)))

(setf (get jetauto_interfaces::SetColorRGBARequest :md5sum-) "283c74850210286a04f67d9713622041")
(setf (get jetauto_interfaces::SetColorRGBARequest :datatype-) "jetauto_interfaces/SetColorRGBARequest")
(setf (get jetauto_interfaces::SetColorRGBARequest :definition-)
      "std_msgs/ColorRGBA data

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---
bool success
string message

")

(setf (get jetauto_interfaces::SetColorRGBAResponse :md5sum-) "283c74850210286a04f67d9713622041")
(setf (get jetauto_interfaces::SetColorRGBAResponse :datatype-) "jetauto_interfaces/SetColorRGBAResponse")
(setf (get jetauto_interfaces::SetColorRGBAResponse :definition-)
      "std_msgs/ColorRGBA data

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---
bool success
string message

")



(provide :jetauto_interfaces/SetColorRGBA "283c74850210286a04f67d9713622041")


