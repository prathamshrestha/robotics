; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-msg)


;//! \htmlinclude ColorsInfo.msg.html

(cl:defclass <ColorsInfo> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector jetauto_interfaces-msg:ColorInfo)
   :initform (cl:make-array 0 :element-type 'jetauto_interfaces-msg:ColorInfo :initial-element (cl:make-instance 'jetauto_interfaces-msg:ColorInfo))))
)

(cl:defclass ColorsInfo (<ColorsInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorsInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorsInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-msg:<ColorsInfo> is deprecated: use jetauto_interfaces-msg:ColorsInfo instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ColorsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-msg:data-val is deprecated.  Use jetauto_interfaces-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorsInfo>) ostream)
  "Serializes a message object of type '<ColorsInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorsInfo>) istream)
  "Deserializes a message object of type '<ColorsInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jetauto_interfaces-msg:ColorInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorsInfo>)))
  "Returns string type for a message object of type '<ColorsInfo>"
  "jetauto_interfaces/ColorsInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorsInfo)))
  "Returns string type for a message object of type 'ColorsInfo"
  "jetauto_interfaces/ColorsInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorsInfo>)))
  "Returns md5sum for a message object of type '<ColorsInfo>"
  "3c5294caa84fe6818ade3c3510c74950")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorsInfo)))
  "Returns md5sum for a message object of type 'ColorsInfo"
  "3c5294caa84fe6818ade3c3510c74950")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorsInfo>)))
  "Returns full string definition for message of type '<ColorsInfo>"
  (cl:format cl:nil " jetauto_interfaces/ColorInfo[] data~%~%================================================================================~%MSG: jetauto_interfaces/ColorInfo~%string color~%int32 width~%int32 height~%int32 x~%int32 y~%int32 radius~%int32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorsInfo)))
  "Returns full string definition for message of type 'ColorsInfo"
  (cl:format cl:nil " jetauto_interfaces/ColorInfo[] data~%~%================================================================================~%MSG: jetauto_interfaces/ColorInfo~%string color~%int32 width~%int32 height~%int32 x~%int32 y~%int32 radius~%int32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorsInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorsInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorsInfo
    (cl:cons ':data (data msg))
))
