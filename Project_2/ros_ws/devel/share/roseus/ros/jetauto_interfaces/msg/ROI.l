;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::ROI)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'ROI (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::ROI")
  (make-package "JETAUTO_INTERFACES::ROI"))

(in-package "ROS")
;;//! \htmlinclude ROI.msg.html


(defclass jetauto_interfaces::ROI
  :super ros::object
  :slots (_y_min _y_max _x_min _x_max _scale ))

(defmethod jetauto_interfaces::ROI
  (:init
   (&key
    ((:y_min __y_min) 0)
    ((:y_max __y_max) 0)
    ((:x_min __x_min) 0)
    ((:x_max __x_max) 0)
    ((:scale __scale) 0.0)
    )
   (send-super :init)
   (setq _y_min (round __y_min))
   (setq _y_max (round __y_max))
   (setq _x_min (round __x_min))
   (setq _x_max (round __x_max))
   (setq _scale (float __scale))
   self)
  (:y_min
   (&optional __y_min)
   (if __y_min (setq _y_min __y_min)) _y_min)
  (:y_max
   (&optional __y_max)
   (if __y_max (setq _y_max __y_max)) _y_max)
  (:x_min
   (&optional __x_min)
   (if __x_min (setq _x_min __x_min)) _x_min)
  (:x_max
   (&optional __x_max)
   (if __x_max (setq _x_max __x_max)) _x_max)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:serialization-length
   ()
   (+
    ;; int16 _y_min
    2
    ;; int16 _y_max
    2
    ;; int16 _x_min
    2
    ;; int16 _x_max
    2
    ;; float32 _scale
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _y_min
       (write-word _y_min s)
     ;; int16 _y_max
       (write-word _y_max s)
     ;; int16 _x_min
       (write-word _x_min s)
     ;; int16 _x_max
       (write-word _x_max s)
     ;; float32 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _y_min
     (setq _y_min (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y_max
     (setq _y_max (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _x_min
     (setq _x_min (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _x_max
     (setq _x_max (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _scale
     (setq _scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jetauto_interfaces::ROI :md5sum-) "eaf833fe38b074210f5cb78ebd4c1035")
(setf (get jetauto_interfaces::ROI :datatype-) "jetauto_interfaces/ROI")
(setf (get jetauto_interfaces::ROI :definition-)
      "int16 y_min
int16 y_max
int16 x_min
int16 x_max
float32 scale

")



(provide :jetauto_interfaces/ROI "eaf833fe38b074210f5cb78ebd4c1035")


