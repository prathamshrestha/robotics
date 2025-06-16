;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::Points)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'Points (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::POINTS")
  (make-package "JETAUTO_INTERFACES::POINTS"))

(in-package "ROS")
;;//! \htmlinclude Points.msg.html


(defclass jetauto_interfaces::Points
  :super ros::object
  :slots (_points ))

(defmethod jetauto_interfaces::Points
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance jetauto_interfaces::PixelPosition :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; jetauto_interfaces/PixelPosition[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetauto_interfaces/PixelPosition[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetauto_interfaces/PixelPosition[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance jetauto_interfaces::PixelPosition :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get jetauto_interfaces::Points :md5sum-) "8f02263beef99aa03117a577a3eb879d")
(setf (get jetauto_interfaces::Points :datatype-) "jetauto_interfaces/Points")
(setf (get jetauto_interfaces::Points :definition-)
      "jetauto_interfaces/PixelPosition[] points
================================================================================
MSG: jetauto_interfaces/PixelPosition
float64 x
float64 y

")



(provide :jetauto_interfaces/Points "8f02263beef99aa03117a577a3eb879d")


