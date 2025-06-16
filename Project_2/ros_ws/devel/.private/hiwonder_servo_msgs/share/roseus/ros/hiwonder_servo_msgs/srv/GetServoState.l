;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::GetServoState)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'GetServoState (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::GETSERVOSTATE")
  (make-package "HIWONDER_SERVO_MSGS::GETSERVOSTATE"))
(unless (find-package "HIWONDER_SERVO_MSGS::GETSERVOSTATEREQUEST")
  (make-package "HIWONDER_SERVO_MSGS::GETSERVOSTATEREQUEST"))
(unless (find-package "HIWONDER_SERVO_MSGS::GETSERVOSTATERESPONSE")
  (make-package "HIWONDER_SERVO_MSGS::GETSERVOSTATERESPONSE"))

(in-package "ROS")





(defclass hiwonder_servo_msgs::GetServoStateRequest
  :super ros::object
  :slots (_cmd _id ))

(defmethod hiwonder_servo_msgs::GetServoStateRequest
  (:init
   (&key
    ((:cmd __cmd) "")
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   (setq _id (round __id))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ;; int16 _id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;; int16 _id
       (write-word _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hiwonder_servo_msgs::GetServoStateResponse
  :super ros::object
  :slots (_success _value ))

(defmethod hiwonder_servo_msgs::GetServoStateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:value __value) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _value __value)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32[] _value
    (* 4    (length _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _value
     (write-long (length _value) s)
     (dotimes (i (length _value))
       (sys::poke (elt _value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hiwonder_servo_msgs::GetServoState
  :super ros::object
  :slots ())

(setf (get hiwonder_servo_msgs::GetServoState :md5sum-) "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(setf (get hiwonder_servo_msgs::GetServoState :datatype-) "hiwonder_servo_msgs/GetServoState")
(setf (get hiwonder_servo_msgs::GetServoState :request) hiwonder_servo_msgs::GetServoStateRequest)
(setf (get hiwonder_servo_msgs::GetServoState :response) hiwonder_servo_msgs::GetServoStateResponse)

(defmethod hiwonder_servo_msgs::GetServoStateRequest
  (:response () (instance hiwonder_servo_msgs::GetServoStateResponse :init)))

(setf (get hiwonder_servo_msgs::GetServoStateRequest :md5sum-) "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(setf (get hiwonder_servo_msgs::GetServoStateRequest :datatype-) "hiwonder_servo_msgs/GetServoStateRequest")
(setf (get hiwonder_servo_msgs::GetServoStateRequest :definition-)
      "string cmd
int16 id
---
bool success
float32[] value

")

(setf (get hiwonder_servo_msgs::GetServoStateResponse :md5sum-) "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(setf (get hiwonder_servo_msgs::GetServoStateResponse :datatype-) "hiwonder_servo_msgs/GetServoStateResponse")
(setf (get hiwonder_servo_msgs::GetServoStateResponse :definition-)
      "string cmd
int16 id
---
bool success
float32[] value

")



(provide :hiwonder_servo_msgs/GetServoState "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")


