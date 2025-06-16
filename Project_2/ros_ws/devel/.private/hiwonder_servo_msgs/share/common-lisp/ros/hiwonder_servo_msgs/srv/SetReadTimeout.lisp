; Auto-generated. Do not edit!


(cl:in-package hiwonder_servo_msgs-srv)


;//! \htmlinclude SetReadTimeout-request.msg.html

(cl:defclass <SetReadTimeout-request> (roslisp-msg-protocol:ros-message)
  ((times
    :reader times
    :initarg :times
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetReadTimeout-request (<SetReadTimeout-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetReadTimeout-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetReadTimeout-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_servo_msgs-srv:<SetReadTimeout-request> is deprecated: use hiwonder_servo_msgs-srv:SetReadTimeout-request instead.")))

(cl:ensure-generic-function 'times-val :lambda-list '(m))
(cl:defmethod times-val ((m <SetReadTimeout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-srv:times-val is deprecated.  Use hiwonder_servo_msgs-srv:times instead.")
  (times m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetReadTimeout-request>) ostream)
  "Serializes a message object of type '<SetReadTimeout-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'times)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetReadTimeout-request>) istream)
  "Deserializes a message object of type '<SetReadTimeout-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'times)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetReadTimeout-request>)))
  "Returns string type for a service object of type '<SetReadTimeout-request>"
  "hiwonder_servo_msgs/SetReadTimeoutRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetReadTimeout-request)))
  "Returns string type for a service object of type 'SetReadTimeout-request"
  "hiwonder_servo_msgs/SetReadTimeoutRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetReadTimeout-request>)))
  "Returns md5sum for a message object of type '<SetReadTimeout-request>"
  "31983b951d3513aec7b12b0efe326e35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetReadTimeout-request)))
  "Returns md5sum for a message object of type 'SetReadTimeout-request"
  "31983b951d3513aec7b12b0efe326e35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetReadTimeout-request>)))
  "Returns full string definition for message of type '<SetReadTimeout-request>"
  (cl:format cl:nil "uint8 times~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetReadTimeout-request)))
  "Returns full string definition for message of type 'SetReadTimeout-request"
  (cl:format cl:nil "uint8 times~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetReadTimeout-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetReadTimeout-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetReadTimeout-request
    (cl:cons ':times (times msg))
))
;//! \htmlinclude SetReadTimeout-response.msg.html

(cl:defclass <SetReadTimeout-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass SetReadTimeout-response (<SetReadTimeout-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetReadTimeout-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetReadTimeout-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_servo_msgs-srv:<SetReadTimeout-response> is deprecated: use hiwonder_servo_msgs-srv:SetReadTimeout-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetReadTimeout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-srv:success-val is deprecated.  Use hiwonder_servo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetReadTimeout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-srv:result-val is deprecated.  Use hiwonder_servo_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetReadTimeout-response>) ostream)
  "Serializes a message object of type '<SetReadTimeout-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetReadTimeout-response>) istream)
  "Deserializes a message object of type '<SetReadTimeout-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetReadTimeout-response>)))
  "Returns string type for a service object of type '<SetReadTimeout-response>"
  "hiwonder_servo_msgs/SetReadTimeoutResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetReadTimeout-response)))
  "Returns string type for a service object of type 'SetReadTimeout-response"
  "hiwonder_servo_msgs/SetReadTimeoutResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetReadTimeout-response>)))
  "Returns md5sum for a message object of type '<SetReadTimeout-response>"
  "31983b951d3513aec7b12b0efe326e35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetReadTimeout-response)))
  "Returns md5sum for a message object of type 'SetReadTimeout-response"
  "31983b951d3513aec7b12b0efe326e35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetReadTimeout-response>)))
  "Returns full string definition for message of type '<SetReadTimeout-response>"
  (cl:format cl:nil "bool success~%string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetReadTimeout-response)))
  "Returns full string definition for message of type 'SetReadTimeout-response"
  (cl:format cl:nil "bool success~%string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetReadTimeout-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetReadTimeout-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetReadTimeout-response
    (cl:cons ':success (success msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetReadTimeout)))
  'SetReadTimeout-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetReadTimeout)))
  'SetReadTimeout-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetReadTimeout)))
  "Returns string type for a service object of type '<SetReadTimeout>"
  "hiwonder_servo_msgs/SetReadTimeout")