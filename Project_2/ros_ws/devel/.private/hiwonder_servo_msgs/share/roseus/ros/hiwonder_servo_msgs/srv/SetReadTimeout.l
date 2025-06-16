;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::SetReadTimeout)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'SetReadTimeout (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::SETREADTIMEOUT")
  (make-package "HIWONDER_SERVO_MSGS::SETREADTIMEOUT"))
(unless (find-package "HIWONDER_SERVO_MSGS::SETREADTIMEOUTREQUEST")
  (make-package "HIWONDER_SERVO_MSGS::SETREADTIMEOUTREQUEST"))
(unless (find-package "HIWONDER_SERVO_MSGS::SETREADTIMEOUTRESPONSE")
  (make-package "HIWONDER_SERVO_MSGS::SETREADTIMEOUTRESPONSE"))

(in-package "ROS")





(defclass hiwonder_servo_msgs::SetReadTimeoutRequest
  :super ros::object
  :slots (_times ))

(defmethod hiwonder_servo_msgs::SetReadTimeoutRequest
  (:init
   (&key
    ((:times __times) 0)
    )
   (send-super :init)
   (setq _times (round __times))
   self)
  (:times
   (&optional __times)
   (if __times (setq _times __times)) _times)
  (:serialization-length
   ()
   (+
    ;; uint8 _times
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _times
       (write-byte _times s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _times
     (setq _times (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass hiwonder_servo_msgs::SetReadTimeoutResponse
  :super ros::object
  :slots (_success _result ))

(defmethod hiwonder_servo_msgs::SetReadTimeoutResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:result __result) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _result (string __result))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hiwonder_servo_msgs::SetReadTimeout
  :super ros::object
  :slots ())

(setf (get hiwonder_servo_msgs::SetReadTimeout :md5sum-) "31983b951d3513aec7b12b0efe326e35")
(setf (get hiwonder_servo_msgs::SetReadTimeout :datatype-) "hiwonder_servo_msgs/SetReadTimeout")
(setf (get hiwonder_servo_msgs::SetReadTimeout :request) hiwonder_servo_msgs::SetReadTimeoutRequest)
(setf (get hiwonder_servo_msgs::SetReadTimeout :response) hiwonder_servo_msgs::SetReadTimeoutResponse)

(defmethod hiwonder_servo_msgs::SetReadTimeoutRequest
  (:response () (instance hiwonder_servo_msgs::SetReadTimeoutResponse :init)))

(setf (get hiwonder_servo_msgs::SetReadTimeoutRequest :md5sum-) "31983b951d3513aec7b12b0efe326e35")
(setf (get hiwonder_servo_msgs::SetReadTimeoutRequest :datatype-) "hiwonder_servo_msgs/SetReadTimeoutRequest")
(setf (get hiwonder_servo_msgs::SetReadTimeoutRequest :definition-)
      "uint8 times
---
bool success
string result

")

(setf (get hiwonder_servo_msgs::SetReadTimeoutResponse :md5sum-) "31983b951d3513aec7b12b0efe326e35")
(setf (get hiwonder_servo_msgs::SetReadTimeoutResponse :datatype-) "hiwonder_servo_msgs/SetReadTimeoutResponse")
(setf (get hiwonder_servo_msgs::SetReadTimeoutResponse :definition-)
      "uint8 times
---
bool success
string result

")



(provide :hiwonder_servo_msgs/SetReadTimeout "31983b951d3513aec7b12b0efe326e35")


