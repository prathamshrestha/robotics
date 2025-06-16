; Auto-generated. Do not edit!


(cl:in-package hiwonder_servo_msgs-srv)


;//! \htmlinclude GetServoState-request.msg.html

(cl:defclass <GetServoState-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetServoState-request (<GetServoState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetServoState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetServoState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_servo_msgs-srv:<GetServoState-request> is deprecated: use hiwonder_servo_msgs-srv:GetServoState-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <GetServoState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-srv:cmd-val is deprecated.  Use hiwonder_servo_msgs-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetServoState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-srv:id-val is deprecated.  Use hiwonder_servo_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetServoState-request>) ostream)
  "Serializes a message object of type '<GetServoState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetServoState-request>) istream)
  "Deserializes a message object of type '<GetServoState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetServoState-request>)))
  "Returns string type for a service object of type '<GetServoState-request>"
  "hiwonder_servo_msgs/GetServoStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetServoState-request)))
  "Returns string type for a service object of type 'GetServoState-request"
  "hiwonder_servo_msgs/GetServoStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetServoState-request>)))
  "Returns md5sum for a message object of type '<GetServoState-request>"
  "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetServoState-request)))
  "Returns md5sum for a message object of type 'GetServoState-request"
  "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetServoState-request>)))
  "Returns full string definition for message of type '<GetServoState-request>"
  (cl:format cl:nil "string cmd~%int16 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetServoState-request)))
  "Returns full string definition for message of type 'GetServoState-request"
  (cl:format cl:nil "string cmd~%int16 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetServoState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetServoState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetServoState-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetServoState-response.msg.html

(cl:defclass <GetServoState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (value
    :reader value
    :initarg :value
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetServoState-response (<GetServoState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetServoState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetServoState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_servo_msgs-srv:<GetServoState-response> is deprecated: use hiwonder_servo_msgs-srv:GetServoState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetServoState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-srv:success-val is deprecated.  Use hiwonder_servo_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetServoState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-srv:value-val is deprecated.  Use hiwonder_servo_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetServoState-response>) ostream)
  "Serializes a message object of type '<GetServoState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetServoState-response>) istream)
  "Deserializes a message object of type '<GetServoState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetServoState-response>)))
  "Returns string type for a service object of type '<GetServoState-response>"
  "hiwonder_servo_msgs/GetServoStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetServoState-response)))
  "Returns string type for a service object of type 'GetServoState-response"
  "hiwonder_servo_msgs/GetServoStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetServoState-response>)))
  "Returns md5sum for a message object of type '<GetServoState-response>"
  "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetServoState-response)))
  "Returns md5sum for a message object of type 'GetServoState-response"
  "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetServoState-response>)))
  "Returns full string definition for message of type '<GetServoState-response>"
  (cl:format cl:nil "bool success~%float32[] value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetServoState-response)))
  "Returns full string definition for message of type 'GetServoState-response"
  (cl:format cl:nil "bool success~%float32[] value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetServoState-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetServoState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetServoState-response
    (cl:cons ':success (success msg))
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetServoState)))
  'GetServoState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetServoState)))
  'GetServoState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetServoState)))
  "Returns string type for a service object of type '<GetServoState>"
  "hiwonder_servo_msgs/GetServoState")