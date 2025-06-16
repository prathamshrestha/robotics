;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::ColorInfo)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'ColorInfo (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::COLORINFO")
  (make-package "JETAUTO_INTERFACES::COLORINFO"))

(in-package "ROS")
;;//! \htmlinclude ColorInfo.msg.html


(defclass jetauto_interfaces::ColorInfo
  :super ros::object
  :slots (_color _width _height _x _y _radius _angle ))

(defmethod jetauto_interfaces::ColorInfo
  (:init
   (&key
    ((:color __color) "")
    ((:width __width) 0)
    ((:height __height) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:radius __radius) 0)
    ((:angle __angle) 0)
    )
   (send-super :init)
   (setq _color (string __color))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _radius (round __radius))
   (setq _angle (round __angle))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
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
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; string _color
    4 (length _color)
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _radius
    4
    ;; int32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _radius
       (write-long _radius s)
     ;; int32 _angle
       (write-long _angle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _radius
     (setq _radius (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _angle
     (setq _angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jetauto_interfaces::ColorInfo :md5sum-) "42545afa01acbfe53f3b1df9340270d6")
(setf (get jetauto_interfaces::ColorInfo :datatype-) "jetauto_interfaces/ColorInfo")
(setf (get jetauto_interfaces::ColorInfo :definition-)
      "string color
int32 width
int32 height
int32 x
int32 y
int32 radius
int32 angle

")



(provide :jetauto_interfaces/ColorInfo "42545afa01acbfe53f3b1df9340270d6")


