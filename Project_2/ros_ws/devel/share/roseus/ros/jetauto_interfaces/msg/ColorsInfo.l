;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::ColorsInfo)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'ColorsInfo (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::COLORSINFO")
  (make-package "JETAUTO_INTERFACES::COLORSINFO"))

(in-package "ROS")
;;//! \htmlinclude ColorsInfo.msg.html


(defclass jetauto_interfaces::ColorsInfo
  :super ros::object
  :slots (_data ))

(defmethod jetauto_interfaces::ColorsInfo
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance jetauto_interfaces::ColorInfo :init) r)) r))
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
    ;; jetauto_interfaces/ColorInfo[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetauto_interfaces/ColorInfo[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetauto_interfaces/ColorInfo[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance jetauto_interfaces::ColorInfo :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get jetauto_interfaces::ColorsInfo :md5sum-) "3c5294caa84fe6818ade3c3510c74950")
(setf (get jetauto_interfaces::ColorsInfo :datatype-) "jetauto_interfaces/ColorsInfo")
(setf (get jetauto_interfaces::ColorsInfo :definition-)
      " jetauto_interfaces/ColorInfo[] data

================================================================================
MSG: jetauto_interfaces/ColorInfo
string color
int32 width
int32 height
int32 x
int32 y
int32 radius
int32 angle

")



(provide :jetauto_interfaces/ColorsInfo "3c5294caa84fe6818ade3c3510c74950")


