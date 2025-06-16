; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-srv)


;//! \htmlinclude SetPose2D-request.msg.html

(cl:defclass <SetPose2D-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type jetauto_interfaces-msg:Pose2D
    :initform (cl:make-instance 'jetauto_interfaces-msg:Pose2D)))
)

(cl:defclass SetPose2D-request (<SetPose2D-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose2D-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose2D-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetPose2D-request> is deprecated: use jetauto_interfaces-srv:SetPose2D-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetPose2D-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:data-val is deprecated.  Use jetauto_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose2D-request>) ostream)
  "Serializes a message object of type '<SetPose2D-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose2D-request>) istream)
  "Deserializes a message object of type '<SetPose2D-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose2D-request>)))
  "Returns string type for a service object of type '<SetPose2D-request>"
  "jetauto_interfaces/SetPose2DRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose2D-request)))
  "Returns string type for a service object of type 'SetPose2D-request"
  "jetauto_interfaces/SetPose2DRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose2D-request>)))
  "Returns md5sum for a message object of type '<SetPose2D-request>"
  "a1bcdcb5bacc267b0cc863094ea73165")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose2D-request)))
  "Returns md5sum for a message object of type 'SetPose2D-request"
  "a1bcdcb5bacc267b0cc863094ea73165")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose2D-request>)))
  "Returns full string definition for message of type '<SetPose2D-request>"
  (cl:format cl:nil "jetauto_interfaces/Pose2D data~%~%================================================================================~%MSG: jetauto_interfaces/Pose2D~%float64 x~%float64 y~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose2D-request)))
  "Returns full string definition for message of type 'SetPose2D-request"
  (cl:format cl:nil "jetauto_interfaces/Pose2D data~%~%================================================================================~%MSG: jetauto_interfaces/Pose2D~%float64 x~%float64 y~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose2D-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose2D-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose2D-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetPose2D-response.msg.html

(cl:defclass <SetPose2D-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetPose2D-response (<SetPose2D-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose2D-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose2D-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetPose2D-response> is deprecated: use jetauto_interfaces-srv:SetPose2D-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPose2D-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:success-val is deprecated.  Use jetauto_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetPose2D-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:message-val is deprecated.  Use jetauto_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose2D-response>) ostream)
  "Serializes a message object of type '<SetPose2D-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose2D-response>) istream)
  "Deserializes a message object of type '<SetPose2D-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose2D-response>)))
  "Returns string type for a service object of type '<SetPose2D-response>"
  "jetauto_interfaces/SetPose2DResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose2D-response)))
  "Returns string type for a service object of type 'SetPose2D-response"
  "jetauto_interfaces/SetPose2DResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose2D-response>)))
  "Returns md5sum for a message object of type '<SetPose2D-response>"
  "a1bcdcb5bacc267b0cc863094ea73165")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose2D-response)))
  "Returns md5sum for a message object of type 'SetPose2D-response"
  "a1bcdcb5bacc267b0cc863094ea73165")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose2D-response>)))
  "Returns full string definition for message of type '<SetPose2D-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose2D-response)))
  "Returns full string definition for message of type 'SetPose2D-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose2D-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose2D-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose2D-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPose2D)))
  'SetPose2D-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPose2D)))
  'SetPose2D-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose2D)))
  "Returns string type for a service object of type '<SetPose2D>"
  "jetauto_interfaces/SetPose2D")