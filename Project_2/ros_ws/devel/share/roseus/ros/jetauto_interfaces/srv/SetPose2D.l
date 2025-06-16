;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetPose2D)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetPose2D (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETPOSE2D")
  (make-package "JETAUTO_INTERFACES::SETPOSE2D"))
(unless (find-package "JETAUTO_INTERFACES::SETPOSE2DREQUEST")
  (make-package "JETAUTO_INTERFACES::SETPOSE2DREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETPOSE2DRESPONSE")
  (make-package "JETAUTO_INTERFACES::SETPOSE2DRESPONSE"))

(in-package "ROS")





(defclass jetauto_interfaces::SetPose2DRequest
  :super ros::object
  :slots (_data ))

(defmethod jetauto_interfaces::SetPose2DRequest
  (:init
   (&key
    ((:data __data) (instance jetauto_interfaces::Pose2D :init))
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
    ;; jetauto_interfaces/Pose2D _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetauto_interfaces/Pose2D _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetauto_interfaces/Pose2D _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetPose2DResponse
  :super ros::object
  :slots (_success _message ))

(defmethod jetauto_interfaces::SetPose2DResponse
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

(defclass jetauto_interfaces::SetPose2D
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetPose2D :md5sum-) "a1bcdcb5bacc267b0cc863094ea73165")
(setf (get jetauto_interfaces::SetPose2D :datatype-) "jetauto_interfaces/SetPose2D")
(setf (get jetauto_interfaces::SetPose2D :request) jetauto_interfaces::SetPose2DRequest)
(setf (get jetauto_interfaces::SetPose2D :response) jetauto_interfaces::SetPose2DResponse)

(defmethod jetauto_interfaces::SetPose2DRequest
  (:response () (instance jetauto_interfaces::SetPose2DResponse :init)))

(setf (get jetauto_interfaces::SetPose2DRequest :md5sum-) "a1bcdcb5bacc267b0cc863094ea73165")
(setf (get jetauto_interfaces::SetPose2DRequest :datatype-) "jetauto_interfaces/SetPose2DRequest")
(setf (get jetauto_interfaces::SetPose2DRequest :definition-)
      "jetauto_interfaces/Pose2D data

================================================================================
MSG: jetauto_interfaces/Pose2D
float64 x
float64 y
float64 roll
float64 pitch
---
bool success
string message

")

(setf (get jetauto_interfaces::SetPose2DResponse :md5sum-) "a1bcdcb5bacc267b0cc863094ea73165")
(setf (get jetauto_interfaces::SetPose2DResponse :datatype-) "jetauto_interfaces/SetPose2DResponse")
(setf (get jetauto_interfaces::SetPose2DResponse :definition-)
      "jetauto_interfaces/Pose2D data

================================================================================
MSG: jetauto_interfaces/Pose2D
float64 x
float64 y
float64 roll
float64 pitch
---
bool success
string message

")



(provide :jetauto_interfaces/SetPose2D "a1bcdcb5bacc267b0cc863094ea73165")


