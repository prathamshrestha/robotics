; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-srv)


;//! \htmlinclude SetLineROI-request.msg.html

(cl:defclass <SetLineROI-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type jetauto_interfaces-msg:LineROI
    :initform (cl:make-instance 'jetauto_interfaces-msg:LineROI)))
)

(cl:defclass SetLineROI-request (<SetLineROI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLineROI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLineROI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetLineROI-request> is deprecated: use jetauto_interfaces-srv:SetLineROI-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetLineROI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:data-val is deprecated.  Use jetauto_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLineROI-request>) ostream)
  "Serializes a message object of type '<SetLineROI-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLineROI-request>) istream)
  "Deserializes a message object of type '<SetLineROI-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLineROI-request>)))
  "Returns string type for a service object of type '<SetLineROI-request>"
  "jetauto_interfaces/SetLineROIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLineROI-request)))
  "Returns string type for a service object of type 'SetLineROI-request"
  "jetauto_interfaces/SetLineROIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLineROI-request>)))
  "Returns md5sum for a message object of type '<SetLineROI-request>"
  "35e53feacfaccfdf6f9964472d9f693d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLineROI-request)))
  "Returns md5sum for a message object of type 'SetLineROI-request"
  "35e53feacfaccfdf6f9964472d9f693d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLineROI-request>)))
  "Returns full string definition for message of type '<SetLineROI-request>"
  (cl:format cl:nil "jetauto_interfaces/LineROI data~%~%================================================================================~%MSG: jetauto_interfaces/LineROI~%jetauto_interfaces/ROI roi_up~%jetauto_interfaces/ROI roi_center~%jetauto_interfaces/ROI roi_down~%~%================================================================================~%MSG: jetauto_interfaces/ROI~%int16 y_min~%int16 y_max~%int16 x_min~%int16 x_max~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLineROI-request)))
  "Returns full string definition for message of type 'SetLineROI-request"
  (cl:format cl:nil "jetauto_interfaces/LineROI data~%~%================================================================================~%MSG: jetauto_interfaces/LineROI~%jetauto_interfaces/ROI roi_up~%jetauto_interfaces/ROI roi_center~%jetauto_interfaces/ROI roi_down~%~%================================================================================~%MSG: jetauto_interfaces/ROI~%int16 y_min~%int16 y_max~%int16 x_min~%int16 x_max~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLineROI-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLineROI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLineROI-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetLineROI-response.msg.html

(cl:defclass <SetLineROI-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetLineROI-response (<SetLineROI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLineROI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLineROI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetLineROI-response> is deprecated: use jetauto_interfaces-srv:SetLineROI-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLineROI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:success-val is deprecated.  Use jetauto_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetLineROI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:message-val is deprecated.  Use jetauto_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLineROI-response>) ostream)
  "Serializes a message object of type '<SetLineROI-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLineROI-response>) istream)
  "Deserializes a message object of type '<SetLineROI-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLineROI-response>)))
  "Returns string type for a service object of type '<SetLineROI-response>"
  "jetauto_interfaces/SetLineROIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLineROI-response)))
  "Returns string type for a service object of type 'SetLineROI-response"
  "jetauto_interfaces/SetLineROIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLineROI-response>)))
  "Returns md5sum for a message object of type '<SetLineROI-response>"
  "35e53feacfaccfdf6f9964472d9f693d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLineROI-response)))
  "Returns md5sum for a message object of type 'SetLineROI-response"
  "35e53feacfaccfdf6f9964472d9f693d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLineROI-response>)))
  "Returns full string definition for message of type '<SetLineROI-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLineROI-response)))
  "Returns full string definition for message of type 'SetLineROI-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLineROI-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLineROI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLineROI-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLineROI)))
  'SetLineROI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLineROI)))
  'SetLineROI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLineROI)))
  "Returns string type for a service object of type '<SetLineROI>"
  "jetauto_interfaces/SetLineROI")