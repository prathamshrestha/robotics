;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::LineROI)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'LineROI (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::LINEROI")
  (make-package "JETAUTO_INTERFACES::LINEROI"))

(in-package "ROS")
;;//! \htmlinclude LineROI.msg.html


(defclass jetauto_interfaces::LineROI
  :super ros::object
  :slots (_roi_up _roi_center _roi_down ))

(defmethod jetauto_interfaces::LineROI
  (:init
   (&key
    ((:roi_up __roi_up) (instance jetauto_interfaces::ROI :init))
    ((:roi_center __roi_center) (instance jetauto_interfaces::ROI :init))
    ((:roi_down __roi_down) (instance jetauto_interfaces::ROI :init))
    )
   (send-super :init)
   (setq _roi_up __roi_up)
   (setq _roi_center __roi_center)
   (setq _roi_down __roi_down)
   self)
  (:roi_up
   (&rest __roi_up)
   (if (keywordp (car __roi_up))
       (send* _roi_up __roi_up)
     (progn
       (if __roi_up (setq _roi_up (car __roi_up)))
       _roi_up)))
  (:roi_center
   (&rest __roi_center)
   (if (keywordp (car __roi_center))
       (send* _roi_center __roi_center)
     (progn
       (if __roi_center (setq _roi_center (car __roi_center)))
       _roi_center)))
  (:roi_down
   (&rest __roi_down)
   (if (keywordp (car __roi_down))
       (send* _roi_down __roi_down)
     (progn
       (if __roi_down (setq _roi_down (car __roi_down)))
       _roi_down)))
  (:serialization-length
   ()
   (+
    ;; jetauto_interfaces/ROI _roi_up
    (send _roi_up :serialization-length)
    ;; jetauto_interfaces/ROI _roi_center
    (send _roi_center :serialization-length)
    ;; jetauto_interfaces/ROI _roi_down
    (send _roi_down :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetauto_interfaces/ROI _roi_up
       (send _roi_up :serialize s)
     ;; jetauto_interfaces/ROI _roi_center
       (send _roi_center :serialize s)
     ;; jetauto_interfaces/ROI _roi_down
       (send _roi_down :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetauto_interfaces/ROI _roi_up
     (send _roi_up :deserialize buf ptr-) (incf ptr- (send _roi_up :serialization-length))
   ;; jetauto_interfaces/ROI _roi_center
     (send _roi_center :deserialize buf ptr-) (incf ptr- (send _roi_center :serialization-length))
   ;; jetauto_interfaces/ROI _roi_down
     (send _roi_down :deserialize buf ptr-) (incf ptr- (send _roi_down :serialization-length))
   ;;
   self)
  )

(setf (get jetauto_interfaces::LineROI :md5sum-) "b196228fae7ce5d6afb589f8af99c676")
(setf (get jetauto_interfaces::LineROI :datatype-) "jetauto_interfaces/LineROI")
(setf (get jetauto_interfaces::LineROI :definition-)
      "jetauto_interfaces/ROI roi_up
jetauto_interfaces/ROI roi_center
jetauto_interfaces/ROI roi_down

================================================================================
MSG: jetauto_interfaces/ROI
int16 y_min
int16 y_max
int16 x_min
int16 x_max
float32 scale

")



(provide :jetauto_interfaces/LineROI "b196228fae7ce5d6afb589f8af99c676")


