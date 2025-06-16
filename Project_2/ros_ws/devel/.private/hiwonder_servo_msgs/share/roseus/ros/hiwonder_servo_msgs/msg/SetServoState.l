;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::SetServoState)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'SetServoState (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::SETSERVOSTATE")
  (make-package "HIWONDER_SERVO_MSGS::SETSERVOSTATE"))

(in-package "ROS")
;;//! \htmlinclude SetServoState.msg.html


(defclass hiwonder_servo_msgs::SetServoState
  :super ros::object
  :slots (_cmd _param ))

(defmethod hiwonder_servo_msgs::SetServoState
  (:init
   (&key
    ((:cmd __cmd) "")
    ((:param __param) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   (setq _param __param)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:param
   (&optional __param)
   (if __param (setq _param __param)) _param)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ;; int16[] _param
    (* 2    (length _param)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;; int16[] _param
     (write-long (length _param) s)
     (dotimes (i (length _param))
       (write-word (elt _param i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16[] _param
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _param (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _param i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get hiwonder_servo_msgs::SetServoState :md5sum-) "495232b75d6f89b16edefd5f6ad78757")
(setf (get hiwonder_servo_msgs::SetServoState :datatype-) "hiwonder_servo_msgs/SetServoState")
(setf (get hiwonder_servo_msgs::SetServoState :definition-)
      "string cmd
int16[] param

")



(provide :hiwonder_servo_msgs/SetServoState "495232b75d6f89b16edefd5f6ad78757")


