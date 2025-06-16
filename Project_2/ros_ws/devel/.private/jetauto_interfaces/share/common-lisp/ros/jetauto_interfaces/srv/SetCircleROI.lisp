; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-srv)


;//! \htmlinclude SetCircleROI-request.msg.html

(cl:defclass <SetCircleROI-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type jetauto_interfaces-msg:ROI
    :initform (cl:make-instance 'jetauto_interfaces-msg:ROI)))
)

(cl:defclass SetCircleROI-request (<SetCircleROI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCircleROI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCircleROI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetCircleROI-request> is deprecated: use jetauto_interfaces-srv:SetCircleROI-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetCircleROI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:data-val is deprecated.  Use jetauto_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCircleROI-request>) ostream)
  "Serializes a message object of type '<SetCircleROI-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCircleROI-request>) istream)
  "Deserializes a message object of type '<SetCircleROI-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCircleROI-request>)))
  "Returns string type for a service object of type '<SetCircleROI-request>"
  "jetauto_interfaces/SetCircleROIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCircleROI-request)))
  "Returns string type for a service object of type 'SetCircleROI-request"
  "jetauto_interfaces/SetCircleROIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCircleROI-request>)))
  "Returns md5sum for a message object of type '<SetCircleROI-request>"
  "eff5af47147109863af37e6078d2eeb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCircleROI-request)))
  "Returns md5sum for a message object of type 'SetCircleROI-request"
  "eff5af47147109863af37e6078d2eeb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCircleROI-request>)))
  "Returns full string definition for message of type '<SetCircleROI-request>"
  (cl:format cl:nil "jetauto_interfaces/ROI data~%~%================================================================================~%MSG: jetauto_interfaces/ROI~%int16 y_min~%int16 y_max~%int16 x_min~%int16 x_max~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCircleROI-request)))
  "Returns full string definition for message of type 'SetCircleROI-request"
  (cl:format cl:nil "jetauto_interfaces/ROI data~%~%================================================================================~%MSG: jetauto_interfaces/ROI~%int16 y_min~%int16 y_max~%int16 x_min~%int16 x_max~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCircleROI-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCircleROI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCircleROI-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetCircleROI-response.msg.html

(cl:defclass <SetCircleROI-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetCircleROI-response (<SetCircleROI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCircleROI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCircleROI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetCircleROI-response> is deprecated: use jetauto_interfaces-srv:SetCircleROI-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetCircleROI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:success-val is deprecated.  Use jetauto_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetCircleROI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:message-val is deprecated.  Use jetauto_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCircleROI-response>) ostream)
  "Serializes a message object of type '<SetCircleROI-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCircleROI-response>) istream)
  "Deserializes a message object of type '<SetCircleROI-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCircleROI-response>)))
  "Returns string type for a service object of type '<SetCircleROI-response>"
  "jetauto_interfaces/SetCircleROIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCircleROI-response)))
  "Returns string type for a service object of type 'SetCircleROI-response"
  "jetauto_interfaces/SetCircleROIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCircleROI-response>)))
  "Returns md5sum for a message object of type '<SetCircleROI-response>"
  "eff5af47147109863af37e6078d2eeb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCircleROI-response)))
  "Returns md5sum for a message object of type 'SetCircleROI-response"
  "eff5af47147109863af37e6078d2eeb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCircleROI-response>)))
  "Returns full string definition for message of type '<SetCircleROI-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCircleROI-response)))
  "Returns full string definition for message of type 'SetCircleROI-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCircleROI-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCircleROI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCircleROI-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCircleROI)))
  'SetCircleROI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCircleROI)))
  'SetCircleROI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCircleROI)))
  "Returns string type for a service object of type '<SetCircleROI>"
  "jetauto_interfaces/SetCircleROI")