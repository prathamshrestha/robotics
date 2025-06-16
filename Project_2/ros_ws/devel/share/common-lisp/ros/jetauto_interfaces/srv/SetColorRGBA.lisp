; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-srv)


;//! \htmlinclude SetColorRGBA-request.msg.html

(cl:defclass <SetColorRGBA-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass SetColorRGBA-request (<SetColorRGBA-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetColorRGBA-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetColorRGBA-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetColorRGBA-request> is deprecated: use jetauto_interfaces-srv:SetColorRGBA-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetColorRGBA-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:data-val is deprecated.  Use jetauto_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetColorRGBA-request>) ostream)
  "Serializes a message object of type '<SetColorRGBA-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetColorRGBA-request>) istream)
  "Deserializes a message object of type '<SetColorRGBA-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetColorRGBA-request>)))
  "Returns string type for a service object of type '<SetColorRGBA-request>"
  "jetauto_interfaces/SetColorRGBARequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetColorRGBA-request)))
  "Returns string type for a service object of type 'SetColorRGBA-request"
  "jetauto_interfaces/SetColorRGBARequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetColorRGBA-request>)))
  "Returns md5sum for a message object of type '<SetColorRGBA-request>"
  "283c74850210286a04f67d9713622041")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetColorRGBA-request)))
  "Returns md5sum for a message object of type 'SetColorRGBA-request"
  "283c74850210286a04f67d9713622041")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetColorRGBA-request>)))
  "Returns full string definition for message of type '<SetColorRGBA-request>"
  (cl:format cl:nil "std_msgs/ColorRGBA data~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetColorRGBA-request)))
  "Returns full string definition for message of type 'SetColorRGBA-request"
  (cl:format cl:nil "std_msgs/ColorRGBA data~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetColorRGBA-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetColorRGBA-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetColorRGBA-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetColorRGBA-response.msg.html

(cl:defclass <SetColorRGBA-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetColorRGBA-response (<SetColorRGBA-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetColorRGBA-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetColorRGBA-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetColorRGBA-response> is deprecated: use jetauto_interfaces-srv:SetColorRGBA-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetColorRGBA-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:success-val is deprecated.  Use jetauto_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetColorRGBA-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:message-val is deprecated.  Use jetauto_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetColorRGBA-response>) ostream)
  "Serializes a message object of type '<SetColorRGBA-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetColorRGBA-response>) istream)
  "Deserializes a message object of type '<SetColorRGBA-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetColorRGBA-response>)))
  "Returns string type for a service object of type '<SetColorRGBA-response>"
  "jetauto_interfaces/SetColorRGBAResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetColorRGBA-response)))
  "Returns string type for a service object of type 'SetColorRGBA-response"
  "jetauto_interfaces/SetColorRGBAResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetColorRGBA-response>)))
  "Returns md5sum for a message object of type '<SetColorRGBA-response>"
  "283c74850210286a04f67d9713622041")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetColorRGBA-response)))
  "Returns md5sum for a message object of type 'SetColorRGBA-response"
  "283c74850210286a04f67d9713622041")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetColorRGBA-response>)))
  "Returns full string definition for message of type '<SetColorRGBA-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetColorRGBA-response)))
  "Returns full string definition for message of type 'SetColorRGBA-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetColorRGBA-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetColorRGBA-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetColorRGBA-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetColorRGBA)))
  'SetColorRGBA-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetColorRGBA)))
  'SetColorRGBA-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetColorRGBA)))
  "Returns string type for a service object of type '<SetColorRGBA>"
  "jetauto_interfaces/SetColorRGBA")