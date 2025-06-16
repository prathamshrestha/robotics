;; Auto-generated. Do not edit!


(when (boundp 'virtual_wall::Wall)
  (if (not (find-package "VIRTUAL_WALL"))
    (make-package "VIRTUAL_WALL"))
  (shadow 'Wall (find-package "VIRTUAL_WALL")))
(unless (find-package "VIRTUAL_WALL::WALL")
  (make-package "VIRTUAL_WALL::WALL"))

(in-package "ROS")
;;//! \htmlinclude Wall.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass virtual_wall::Wall
  :super ros::object
  :slots (_id _name _polygon ))

(defmethod virtual_wall::Wall
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:polygon __polygon) (instance geometry_msgs::Polygon :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _polygon __polygon)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Polygon _polygon
    (send _polygon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Polygon _polygon
       (send _polygon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Polygon _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;;
   self)
  )

(setf (get virtual_wall::Wall :md5sum-) "4636dccb05dabeb179bb12a55a86b5c4")
(setf (get virtual_wall::Wall :datatype-) "virtual_wall/Wall")
(setf (get virtual_wall::Wall :definition-)
      "uint8 id
string name
geometry_msgs/Polygon polygon
================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :virtual_wall/Wall "4636dccb05dabeb179bb12a55a86b5c4")


