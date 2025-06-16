; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-msg)


;//! \htmlinclude ColorDetect.msg.html

(cl:defclass <ColorDetect> (roslisp-msg-protocol:ros-message)
  ((color_name
    :reader color_name
    :initarg :color_name
    :type cl:string
    :initform "")
   (detect_type
    :reader detect_type
    :initarg :detect_type
    :type cl:string
    :initform ""))
)

(cl:defclass ColorDetect (<ColorDetect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorDetect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorDetect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-msg:<ColorDetect> is deprecated: use jetauto_interfaces-msg:ColorDetect instead.")))

(cl:ensure-generic-function 'color_name-val :lambda-list '(m))
(cl:defmethod color_name-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-msg:color_name-val is deprecated.  Use jetauto_interfaces-msg:color_name instead.")
  (color_name m))

(cl:ensure-generic-function 'detect_type-val :lambda-list '(m))
(cl:defmethod detect_type-val ((m <ColorDetect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-msg:detect_type-val is deprecated.  Use jetauto_interfaces-msg:detect_type instead.")
  (detect_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorDetect>) ostream)
  "Serializes a message object of type '<ColorDetect>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detect_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detect_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorDetect>) istream)
  "Deserializes a message object of type '<ColorDetect>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detect_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detect_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorDetect>)))
  "Returns string type for a message object of type '<ColorDetect>"
  "jetauto_interfaces/ColorDetect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorDetect)))
  "Returns string type for a message object of type 'ColorDetect"
  "jetauto_interfaces/ColorDetect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorDetect>)))
  "Returns md5sum for a message object of type '<ColorDetect>"
  "4e4e09872769a19519f9568bfbc9dbd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorDetect)))
  "Returns md5sum for a message object of type 'ColorDetect"
  "4e4e09872769a19519f9568bfbc9dbd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorDetect>)))
  "Returns full string definition for message of type '<ColorDetect>"
  (cl:format cl:nil "string color_name~%string detect_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorDetect)))
  "Returns full string definition for message of type 'ColorDetect"
  (cl:format cl:nil "string color_name~%string detect_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorDetect>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color_name))
     4 (cl:length (cl:slot-value msg 'detect_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorDetect>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorDetect
    (cl:cons ':color_name (color_name msg))
    (cl:cons ':detect_type (detect_type msg))
))
