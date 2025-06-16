;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::ObjectInfo)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'ObjectInfo (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::OBJECTINFO")
  (make-package "JETAUTO_INTERFACES::OBJECTINFO"))

(in-package "ROS")
;;//! \htmlinclude ObjectInfo.msg.html


(defclass jetauto_interfaces::ObjectInfo
  :super ros::object
  :slots (_class_name _box _score ))

(defmethod jetauto_interfaces::ObjectInfo
  (:init
   (&key
    ((:class_name __class_name) "")
    ((:box __box) (make-array 0 :initial-element 0 :element-type :integer))
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _class_name (string __class_name))
   (setq _box __box)
   (setq _score (float __score))
   self)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:box
   (&optional __box)
   (if __box (setq _box __box)) _box)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; string _class_name
    4 (length _class_name)
    ;; int32[] _box
    (* 4    (length _box)) 4
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _class_name
       (write-long (length _class_name) s) (princ _class_name s)
     ;; int32[] _box
     (write-long (length _box) s)
     (dotimes (i (length _box))
       (write-long (elt _box i) s)
       )
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _class_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _box
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _box (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _box i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jetauto_interfaces::ObjectInfo :md5sum-) "3ebf7cc78c9b0f49498f40ad8f4b8382")
(setf (get jetauto_interfaces::ObjectInfo :datatype-) "jetauto_interfaces/ObjectInfo")
(setf (get jetauto_interfaces::ObjectInfo :definition-)
      "string class_name
int32[] box
float32 score

")



(provide :jetauto_interfaces/ObjectInfo "3ebf7cc78c9b0f49498f40ad8f4b8382")


