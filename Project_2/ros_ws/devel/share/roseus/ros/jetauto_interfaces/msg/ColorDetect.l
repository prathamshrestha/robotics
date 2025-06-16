;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::ColorDetect)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'ColorDetect (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::COLORDETECT")
  (make-package "JETAUTO_INTERFACES::COLORDETECT"))

(in-package "ROS")
;;//! \htmlinclude ColorDetect.msg.html


(defclass jetauto_interfaces::ColorDetect
  :super ros::object
  :slots (_color_name _detect_type ))

(defmethod jetauto_interfaces::ColorDetect
  (:init
   (&key
    ((:color_name __color_name) "")
    ((:detect_type __detect_type) "")
    )
   (send-super :init)
   (setq _color_name (string __color_name))
   (setq _detect_type (string __detect_type))
   self)
  (:color_name
   (&optional __color_name)
   (if __color_name (setq _color_name __color_name)) _color_name)
  (:detect_type
   (&optional __detect_type)
   (if __detect_type (setq _detect_type __detect_type)) _detect_type)
  (:serialization-length
   ()
   (+
    ;; string _color_name
    4 (length _color_name)
    ;; string _detect_type
    4 (length _detect_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color_name
       (write-long (length _color_name) s) (princ _color_name s)
     ;; string _detect_type
       (write-long (length _detect_type) s) (princ _detect_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _detect_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detect_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get jetauto_interfaces::ColorDetect :md5sum-) "4e4e09872769a19519f9568bfbc9dbd6")
(setf (get jetauto_interfaces::ColorDetect :datatype-) "jetauto_interfaces/ColorDetect")
(setf (get jetauto_interfaces::ColorDetect :definition-)
      "string color_name
string detect_type

")



(provide :jetauto_interfaces/ColorDetect "4e4e09872769a19519f9568bfbc9dbd6")


