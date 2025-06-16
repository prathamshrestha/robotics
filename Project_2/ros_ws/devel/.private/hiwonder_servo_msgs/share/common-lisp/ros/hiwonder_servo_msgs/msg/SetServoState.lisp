; Auto-generated. Do not edit!


(cl:in-package hiwonder_servo_msgs-msg)


;//! \htmlinclude SetServoState.msg.html

(cl:defclass <SetServoState> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform "")
   (param
    :reader param
    :initarg :param
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SetServoState (<SetServoState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetServoState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetServoState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_servo_msgs-msg:<SetServoState> is deprecated: use hiwonder_servo_msgs-msg:SetServoState instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <SetServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:cmd-val is deprecated.  Use hiwonder_servo_msgs-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'param-val :lambda-list '(m))
(cl:defmethod param-val ((m <SetServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:param-val is deprecated.  Use hiwonder_servo_msgs-msg:param instead.")
  (param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetServoState>) ostream)
  "Serializes a message object of type '<SetServoState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'param))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetServoState>) istream)
  "Deserializes a message object of type '<SetServoState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'param) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'param)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetServoState>)))
  "Returns string type for a message object of type '<SetServoState>"
  "hiwonder_servo_msgs/SetServoState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetServoState)))
  "Returns string type for a message object of type 'SetServoState"
  "hiwonder_servo_msgs/SetServoState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetServoState>)))
  "Returns md5sum for a message object of type '<SetServoState>"
  "495232b75d6f89b16edefd5f6ad78757")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetServoState)))
  "Returns md5sum for a message object of type 'SetServoState"
  "495232b75d6f89b16edefd5f6ad78757")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetServoState>)))
  "Returns full string definition for message of type '<SetServoState>"
  (cl:format cl:nil "string cmd~%int16[] param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetServoState)))
  "Returns full string definition for message of type 'SetServoState"
  (cl:format cl:nil "string cmd~%int16[] param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetServoState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'param) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetServoState>))
  "Converts a ROS message object to a list"
  (cl:list 'SetServoState
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':param (param msg))
))
