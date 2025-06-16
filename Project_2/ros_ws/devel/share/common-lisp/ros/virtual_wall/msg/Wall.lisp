; Auto-generated. Do not edit!


(cl:in-package virtual_wall-msg)


;//! \htmlinclude Wall.msg.html

(cl:defclass <Wall> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (polygon
    :reader polygon
    :initarg :polygon
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon)))
)

(cl:defclass Wall (<Wall>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wall>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wall)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name virtual_wall-msg:<Wall> is deprecated: use virtual_wall-msg:Wall instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader virtual_wall-msg:id-val is deprecated.  Use virtual_wall-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader virtual_wall-msg:name-val is deprecated.  Use virtual_wall-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <Wall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader virtual_wall-msg:polygon-val is deprecated.  Use virtual_wall-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wall>) ostream)
  "Serializes a message object of type '<Wall>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wall>) istream)
  "Deserializes a message object of type '<Wall>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wall>)))
  "Returns string type for a message object of type '<Wall>"
  "virtual_wall/Wall")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wall)))
  "Returns string type for a message object of type 'Wall"
  "virtual_wall/Wall")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wall>)))
  "Returns md5sum for a message object of type '<Wall>"
  "4636dccb05dabeb179bb12a55a86b5c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wall)))
  "Returns md5sum for a message object of type 'Wall"
  "4636dccb05dabeb179bb12a55a86b5c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wall>)))
  "Returns full string definition for message of type '<Wall>"
  (cl:format cl:nil "uint8 id~%string name~%geometry_msgs/Polygon polygon~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wall)))
  "Returns full string definition for message of type 'Wall"
  (cl:format cl:nil "uint8 id~%string name~%geometry_msgs/Polygon polygon~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wall>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wall>))
  "Converts a ROS message object to a list"
  (cl:list 'Wall
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':polygon (polygon msg))
))
