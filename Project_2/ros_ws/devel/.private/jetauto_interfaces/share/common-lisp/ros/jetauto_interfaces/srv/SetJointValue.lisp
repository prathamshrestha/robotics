; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-srv)


;//! \htmlinclude SetJointValue-request.msg.html

(cl:defclass <SetJointValue-request> (roslisp-msg-protocol:ros-message)
  ((joint_value
    :reader joint_value
    :initarg :joint_value
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetJointValue-request (<SetJointValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetJointValue-request> is deprecated: use jetauto_interfaces-srv:SetJointValue-request instead.")))

(cl:ensure-generic-function 'joint_value-val :lambda-list '(m))
(cl:defmethod joint_value-val ((m <SetJointValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:joint_value-val is deprecated.  Use jetauto_interfaces-srv:joint_value instead.")
  (joint_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointValue-request>) ostream)
  "Serializes a message object of type '<SetJointValue-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointValue-request>) istream)
  "Deserializes a message object of type '<SetJointValue-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointValue-request>)))
  "Returns string type for a service object of type '<SetJointValue-request>"
  "jetauto_interfaces/SetJointValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointValue-request)))
  "Returns string type for a service object of type 'SetJointValue-request"
  "jetauto_interfaces/SetJointValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointValue-request>)))
  "Returns md5sum for a message object of type '<SetJointValue-request>"
  "f30e2e31fba61d3992775965b6a52966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointValue-request)))
  "Returns md5sum for a message object of type 'SetJointValue-request"
  "f30e2e31fba61d3992775965b6a52966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointValue-request>)))
  "Returns full string definition for message of type '<SetJointValue-request>"
  (cl:format cl:nil "float32[] joint_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointValue-request)))
  "Returns full string definition for message of type 'SetJointValue-request"
  (cl:format cl:nil "float32[] joint_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointValue-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointValue-request
    (cl:cons ':joint_value (joint_value msg))
))
;//! \htmlinclude SetJointValue-response.msg.html

(cl:defclass <SetJointValue-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (orientation
    :reader orientation
    :initarg :orientation
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetJointValue-response (<SetJointValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-srv:<SetJointValue-response> is deprecated: use jetauto_interfaces-srv:SetJointValue-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:success-val is deprecated.  Use jetauto_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SetJointValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:position-val is deprecated.  Use jetauto_interfaces-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <SetJointValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-srv:orientation-val is deprecated.  Use jetauto_interfaces-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointValue-response>) ostream)
  "Serializes a message object of type '<SetJointValue-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'orientation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointValue-response>) istream)
  "Deserializes a message object of type '<SetJointValue-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'orientation) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'orientation)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointValue-response>)))
  "Returns string type for a service object of type '<SetJointValue-response>"
  "jetauto_interfaces/SetJointValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointValue-response)))
  "Returns string type for a service object of type 'SetJointValue-response"
  "jetauto_interfaces/SetJointValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointValue-response>)))
  "Returns md5sum for a message object of type '<SetJointValue-response>"
  "f30e2e31fba61d3992775965b6a52966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointValue-response)))
  "Returns md5sum for a message object of type 'SetJointValue-response"
  "f30e2e31fba61d3992775965b6a52966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointValue-response>)))
  "Returns full string definition for message of type '<SetJointValue-response>"
  (cl:format cl:nil "bool success~%float32[] position~%float32[] orientation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointValue-response)))
  "Returns full string definition for message of type 'SetJointValue-response"
  (cl:format cl:nil "bool success~%float32[] position~%float32[] orientation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointValue-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointValue-response
    (cl:cons ':success (success msg))
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointValue)))
  'SetJointValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointValue)))
  'SetJointValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointValue)))
  "Returns string type for a service object of type '<SetJointValue>"
  "jetauto_interfaces/SetJointValue")