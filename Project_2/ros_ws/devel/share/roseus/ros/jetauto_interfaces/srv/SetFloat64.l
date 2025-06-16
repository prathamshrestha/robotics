;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetFloat64)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetFloat64 (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETFLOAT64")
  (make-package "JETAUTO_INTERFACES::SETFLOAT64"))
(unless (find-package "JETAUTO_INTERFACES::SETFLOAT64REQUEST")
  (make-package "JETAUTO_INTERFACES::SETFLOAT64REQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETFLOAT64RESPONSE")
  (make-package "JETAUTO_INTERFACES::SETFLOAT64RESPONSE"))

(in-package "ROS")





(defclass jetauto_interfaces::SetFloat64Request
  :super ros::object
  :slots (_data ))

(defmethod jetauto_interfaces::SetFloat64Request
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass jetauto_interfaces::SetFloat64Response
  :super ros::object
  :slots (_success _message ))

(defmethod jetauto_interfaces::SetFloat64Response
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

(defclass jetauto_interfaces::SetFloat64
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetFloat64 :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get jetauto_interfaces::SetFloat64 :datatype-) "jetauto_interfaces/SetFloat64")
(setf (get jetauto_interfaces::SetFloat64 :request) jetauto_interfaces::SetFloat64Request)
(setf (get jetauto_interfaces::SetFloat64 :response) jetauto_interfaces::SetFloat64Response)

(defmethod jetauto_interfaces::SetFloat64Request
  (:response () (instance jetauto_interfaces::SetFloat64Response :init)))

(setf (get jetauto_interfaces::SetFloat64Request :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get jetauto_interfaces::SetFloat64Request :datatype-) "jetauto_interfaces/SetFloat64Request")
(setf (get jetauto_interfaces::SetFloat64Request :definition-)
      "float64 data
---
bool success
string message

")

(setf (get jetauto_interfaces::SetFloat64Response :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get jetauto_interfaces::SetFloat64Response :datatype-) "jetauto_interfaces/SetFloat64Response")
(setf (get jetauto_interfaces::SetFloat64Response :definition-)
      "float64 data
---
bool success
string message

")



(provide :jetauto_interfaces/SetFloat64 "3f47c51e9da05852f0d7f484f9279955")


