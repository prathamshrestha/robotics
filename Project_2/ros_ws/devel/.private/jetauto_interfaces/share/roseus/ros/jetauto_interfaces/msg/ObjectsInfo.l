;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::ObjectsInfo)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'ObjectsInfo (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::OBJECTSINFO")
  (make-package "JETAUTO_INTERFACES::OBJECTSINFO"))

(in-package "ROS")
;;//! \htmlinclude ObjectsInfo.msg.html


(defclass jetauto_interfaces::ObjectsInfo
  :super ros::object
  :slots (_objects ))

(defmethod jetauto_interfaces::ObjectsInfo
  (:init
   (&key
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance jetauto_interfaces::ObjectInfo :init) r)) r))
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; jetauto_interfaces/ObjectInfo[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jetauto_interfaces/ObjectInfo[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jetauto_interfaces/ObjectInfo[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance jetauto_interfaces::ObjectInfo :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get jetauto_interfaces::ObjectsInfo :md5sum-) "257af89367afa3cd0032cdb5a0607c8b")
(setf (get jetauto_interfaces::ObjectsInfo :datatype-) "jetauto_interfaces/ObjectsInfo")
(setf (get jetauto_interfaces::ObjectsInfo :definition-)
      "jetauto_interfaces/ObjectInfo[] objects

================================================================================
MSG: jetauto_interfaces/ObjectInfo
string class_name
int32[] box
float32 score

")



(provide :jetauto_interfaces/ObjectsInfo "257af89367afa3cd0032cdb5a0607c8b")


