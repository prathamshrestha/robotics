; Auto-generated. Do not edit!


(cl:in-package xf_mic_asr_offline-msg)


;//! \htmlinclude BuzzerState.msg.html

(cl:defclass <BuzzerState> (roslisp-msg-protocol:ros-message)
  ((freq
    :reader freq
    :initarg :freq
    :type cl:fixnum
    :initform 0)
   (on_time
    :reader on_time
    :initarg :on_time
    :type cl:float
    :initform 0.0)
   (off_time
    :reader off_time
    :initarg :off_time
    :type cl:float
    :initform 0.0)
   (repeat
    :reader repeat
    :initarg :repeat
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BuzzerState (<BuzzerState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuzzerState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuzzerState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xf_mic_asr_offline-msg:<BuzzerState> is deprecated: use xf_mic_asr_offline-msg:BuzzerState instead.")))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <BuzzerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_asr_offline-msg:freq-val is deprecated.  Use xf_mic_asr_offline-msg:freq instead.")
  (freq m))

(cl:ensure-generic-function 'on_time-val :lambda-list '(m))
(cl:defmethod on_time-val ((m <BuzzerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_asr_offline-msg:on_time-val is deprecated.  Use xf_mic_asr_offline-msg:on_time instead.")
  (on_time m))

(cl:ensure-generic-function 'off_time-val :lambda-list '(m))
(cl:defmethod off_time-val ((m <BuzzerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_asr_offline-msg:off_time-val is deprecated.  Use xf_mic_asr_offline-msg:off_time instead.")
  (off_time m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <BuzzerState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xf_mic_asr_offline-msg:repeat-val is deprecated.  Use xf_mic_asr_offline-msg:repeat instead.")
  (repeat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuzzerState>) ostream)
  "Serializes a message object of type '<BuzzerState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freq)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'on_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'off_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repeat)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuzzerState>) istream)
  "Deserializes a message object of type '<BuzzerState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freq)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'on_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'off_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuzzerState>)))
  "Returns string type for a message object of type '<BuzzerState>"
  "xf_mic_asr_offline/BuzzerState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuzzerState)))
  "Returns string type for a message object of type 'BuzzerState"
  "xf_mic_asr_offline/BuzzerState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuzzerState>)))
  "Returns md5sum for a message object of type '<BuzzerState>"
  "bf6a6f6f285012bcc0e11a4dd35a61af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuzzerState)))
  "Returns md5sum for a message object of type 'BuzzerState"
  "bf6a6f6f285012bcc0e11a4dd35a61af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuzzerState>)))
  "Returns full string definition for message of type '<BuzzerState>"
  (cl:format cl:nil "uint16 freq~%float32 on_time~%float32 off_time~%uint16 repeat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuzzerState)))
  "Returns full string definition for message of type 'BuzzerState"
  (cl:format cl:nil "uint16 freq~%float32 on_time~%float32 off_time~%uint16 repeat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuzzerState>))
  (cl:+ 0
     2
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuzzerState>))
  "Converts a ROS message object to a list"
  (cl:list 'BuzzerState
    (cl:cons ':freq (freq msg))
    (cl:cons ':on_time (on_time msg))
    (cl:cons ':off_time (off_time msg))
    (cl:cons ':repeat (repeat msg))
))
