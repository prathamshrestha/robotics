;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::Point2D)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'Point2D (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::POINT2D")
  (make-package "JETAUTO_INTERFACES::POINT2D"))

(in-package "ROS")
;;//! \htmlinclude Point2D.msg.html


(defclass jetauto_interfaces::Point2D
  :super ros::object
  :slots (_width _height _x _y ))

(defmethod jetauto_interfaces::Point2D
  (:init
   (&key
    ((:width __width) 0)
    ((:height __height) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jetauto_interfaces::Point2D :md5sum-) "9719c26e1c94e945e9c9bae938c14241")
(setf (get jetauto_interfaces::Point2D :datatype-) "jetauto_interfaces/Point2D")
(setf (get jetauto_interfaces::Point2D :definition-)
      "int32 width
int32 height
int32 x
int32 y

")



(provide :jetauto_interfaces/Point2D "9719c26e1c94e945e9c9bae938c14241")


