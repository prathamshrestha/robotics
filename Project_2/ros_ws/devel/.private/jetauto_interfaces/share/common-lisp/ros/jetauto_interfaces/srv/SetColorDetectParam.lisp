; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-srv)


;//! \htmlinclude SetColorDetectParam-request.msg.html

(cl:defclass <SetColorDetectParam-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector jetauto_interfaces-msg:ColorDetect)
   :initform (cl:make-array 0 :element-type 'jetauto_interfaces-msg:ColorDetect :initial-element (cl:make-instance 'jetauto_interfaces-msg:ColorDetect))))
)

(cl:defclass SetColorDetectParam-request (<SetColorDetectParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetColorDetectParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetColorDetectParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetColorDetectParam-request> is deprecated: use jetauto_interfaces-srv:SetColorDetectParam-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetColorDetectParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:data-val is deprecated.  Use jetauto_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetColorDetectParam-request>) ostream)
  "Serializes a message object of type '<SetColorDetectParam-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetColorDetectParam-request>) istream)
  "Deserializes a message object of type '<SetColorDetectParam-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jetauto_interfaces-msg:ColorDetect))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetColorDetectParam-request>)))
  "Returns string type for a service object of type '<SetColorDetectParam-request>"
  "jetauto_interfaces/SetColorDetectParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetColorDetectParam-request)))
  "Returns string type for a service object of type 'SetColorDetectParam-request"
  "jetauto_interfaces/SetColorDetectParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetColorDetectParam-request>)))
  "Returns md5sum for a message object of type '<SetColorDetectParam-request>"
  "0ec73f9b73674c15d92cf45372dbab3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetColorDetectParam-request)))
  "Returns md5sum for a message object of type 'SetColorDetectParam-request"
  "0ec73f9b73674c15d92cf45372dbab3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetColorDetectParam-request>)))
  "Returns full string definition for message of type '<SetColorDetectParam-request>"
  (cl:format cl:nil "jetauto_interfaces/ColorDetect[] data~%~%================================================================================~%MSG: jetauto_interfaces/ColorDetect~%string color_name~%string detect_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetColorDetectParam-request)))
  "Returns full string definition for message of type 'SetColorDetectParam-request"
  (cl:format cl:nil "jetauto_interfaces/ColorDetect[] data~%~%================================================================================~%MSG: jetauto_interfaces/ColorDetect~%string color_name~%string detect_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetColorDetectParam-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetColorDetectParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetColorDetectParam-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetColorDetectParam-response.msg.html

(cl:defclass <SetColorDetectParam-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetColorDetectParam-response (<SetColorDetectParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetColorDetectParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetColorDetectParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetColorDetectParam-response> is deprecated: use jetauto_interfaces-srv:SetColorDetectParam-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetColorDetectParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:success-val is deprecated.  Use jetauto_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetColorDetectParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:message-val is deprecated.  Use jetauto_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetColorDetectParam-response>) ostream)
  "Serializes a message object of type '<SetColorDetectParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetColorDetectParam-response>) istream)
  "Deserializes a message object of type '<SetColorDetectParam-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetColorDetectParam-response>)))
  "Returns string type for a service object of type '<SetColorDetectParam-response>"
  "jetauto_interfaces/SetColorDetectParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetColorDetectParam-response)))
  "Returns string type for a service object of type 'SetColorDetectParam-response"
  "jetauto_interfaces/SetColorDetectParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetColorDetectParam-response>)))
  "Returns md5sum for a message object of type '<SetColorDetectParam-response>"
  "0ec73f9b73674c15d92cf45372dbab3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetColorDetectParam-response)))
  "Returns md5sum for a message object of type 'SetColorDetectParam-response"
  "0ec73f9b73674c15d92cf45372dbab3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetColorDetectParam-response>)))
  "Returns full string definition for message of type '<SetColorDetectParam-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetColorDetectParam-response)))
  "Returns full string definition for message of type 'SetColorDetectParam-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetColorDetectParam-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetColorDetectParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetColorDetectParam-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetColorDetectParam)))
  'SetColorDetectParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetColorDetectParam)))
  'SetColorDetectParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetColorDetectParam)))
  "Returns string type for a service object of type '<SetColorDetectParam>"
  "jetauto_interfaces/SetColorDetectParam")