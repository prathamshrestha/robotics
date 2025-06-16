; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-msg)


;//! \htmlinclude ObjectsInfo.msg.html

(cl:defclass <ObjectsInfo> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector jetauto_interfaces-msg:ObjectInfo)
   :initform (cl:make-array 0 :element-type 'jetauto_interfaces-msg:ObjectInfo :initial-element (cl:make-instance 'jetauto_interfaces-msg:ObjectInfo))))
)

(cl:defclass ObjectsInfo (<ObjectsInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectsInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectsInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-msg:<ObjectsInfo> is deprecated: use jetauto_interfaces-msg:ObjectsInfo instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ObjectsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-msg:objects-val is deprecated.  Use jetauto_interfaces-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectsInfo>) ostream)
  "Serializes a message object of type '<ObjectsInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectsInfo>) istream)
  "Deserializes a message object of type '<ObjectsInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jetauto_interfaces-msg:ObjectInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectsInfo>)))
  "Returns string type for a message object of type '<ObjectsInfo>"
  "jetauto_interfaces/ObjectsInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectsInfo)))
  "Returns string type for a message object of type 'ObjectsInfo"
  "jetauto_interfaces/ObjectsInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectsInfo>)))
  "Returns md5sum for a message object of type '<ObjectsInfo>"
  "257af89367afa3cd0032cdb5a0607c8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectsInfo)))
  "Returns md5sum for a message object of type 'ObjectsInfo"
  "257af89367afa3cd0032cdb5a0607c8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectsInfo>)))
  "Returns full string definition for message of type '<ObjectsInfo>"
  (cl:format cl:nil "jetauto_interfaces/ObjectInfo[] objects~%~%================================================================================~%MSG: jetauto_interfaces/ObjectInfo~%string class_name~%int32[] box~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectsInfo)))
  "Returns full string definition for message of type 'ObjectsInfo"
  (cl:format cl:nil "jetauto_interfaces/ObjectInfo[] objects~%~%================================================================================~%MSG: jetauto_interfaces/ObjectInfo~%string class_name~%int32[] box~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectsInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectsInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectsInfo
    (cl:cons ':objects (objects msg))
))
