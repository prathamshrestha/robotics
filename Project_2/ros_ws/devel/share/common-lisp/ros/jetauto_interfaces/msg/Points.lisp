; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-msg)


;//! \htmlinclude Points.msg.html

(cl:defclass <Points> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector jetauto_interfaces-msg:PixelPosition)
   :initform (cl:make-array 0 :element-type 'jetauto_interfaces-msg:PixelPosition :initial-element (cl:make-instance 'jetauto_interfaces-msg:PixelPosition))))
)

(cl:defclass Points (<Points>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Points>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Points)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-msg:<Points> is deprecated: use jetauto_interfaces-msg:Points instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Points>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-msg:points-val is deprecated.  Use jetauto_interfaces-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Points>) ostream)
  "Serializes a message object of type '<Points>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Points>) istream)
  "Deserializes a message object of type '<Points>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jetauto_interfaces-msg:PixelPosition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Points>)))
  "Returns string type for a message object of type '<Points>"
  "jetauto_interfaces/Points")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Points)))
  "Returns string type for a message object of type 'Points"
  "jetauto_interfaces/Points")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Points>)))
  "Returns md5sum for a message object of type '<Points>"
  "8f02263beef99aa03117a577a3eb879d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Points)))
  "Returns md5sum for a message object of type 'Points"
  "8f02263beef99aa03117a577a3eb879d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Points>)))
  "Returns full string definition for message of type '<Points>"
  (cl:format cl:nil "jetauto_interfaces/PixelPosition[] points~%================================================================================~%MSG: jetauto_interfaces/PixelPosition~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Points)))
  "Returns full string definition for message of type 'Points"
  (cl:format cl:nil "jetauto_interfaces/PixelPosition[] points~%================================================================================~%MSG: jetauto_interfaces/PixelPosition~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Points>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Points>))
  "Converts a ROS message object to a list"
  (cl:list 'Points
    (cl:cons ':points (points msg))
))
