; Auto-generated. Do not edit!


(cl:in-package jetauto_interfaces-msg)


;//! \htmlinclude LineROI.msg.html

(cl:defclass <LineROI> (roslisp-msg-protocol:ros-message)
  ((roi_up
    :reader roi_up
    :initarg :roi_up
    :type jetauto_interfaces-msg:ROI
    :initform (cl:make-instance 'jetauto_interfaces-msg:ROI))
   (roi_center
    :reader roi_center
    :initarg :roi_center
    :type jetauto_interfaces-msg:ROI
    :initform (cl:make-instance 'jetauto_interfaces-msg:ROI))
   (roi_down
    :reader roi_down
    :initarg :roi_down
    :type jetauto_interfaces-msg:ROI
    :initform (cl:make-instance 'jetauto_interfaces-msg:ROI)))
)

(cl:defclass LineROI (<LineROI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineROI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineROI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetauto_interfaces-msg:<LineROI> is deprecated: use jetauto_interfaces-msg:LineROI instead.")))

(cl:ensure-generic-function 'roi_up-val :lambda-list '(m))
(cl:defmethod roi_up-val ((m <LineROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-msg:roi_up-val is deprecated.  Use jetauto_interfaces-msg:roi_up instead.")
  (roi_up m))

(cl:ensure-generic-function 'roi_center-val :lambda-list '(m))
(cl:defmethod roi_center-val ((m <LineROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-msg:roi_center-val is deprecated.  Use jetauto_interfaces-msg:roi_center instead.")
  (roi_center m))

(cl:ensure-generic-function 'roi_down-val :lambda-list '(m))
(cl:defmethod roi_down-val ((m <LineROI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetauto_interfaces-msg:roi_down-val is deprecated.  Use jetauto_interfaces-msg:roi_down instead.")
  (roi_down m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineROI>) ostream)
  "Serializes a message object of type '<LineROI>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi_up) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi_down) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineROI>) istream)
  "Deserializes a message object of type '<LineROI>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi_up) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi_down) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineROI>)))
  "Returns string type for a message object of type '<LineROI>"
  "jetauto_interfaces/LineROI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineROI)))
  "Returns string type for a message object of type 'LineROI"
  "jetauto_interfaces/LineROI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineROI>)))
  "Returns md5sum for a message object of type '<LineROI>"
  "b196228fae7ce5d6afb589f8af99c676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineROI)))
  "Returns md5sum for a message object of type 'LineROI"
  "b196228fae7ce5d6afb589f8af99c676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineROI>)))
  "Returns full string definition for message of type '<LineROI>"
  (cl:format cl:nil "jetauto_interfaces/ROI roi_up~%jetauto_interfaces/ROI roi_center~%jetauto_interfaces/ROI roi_down~%~%================================================================================~%MSG: jetauto_interfaces/ROI~%int16 y_min~%int16 y_max~%int16 x_min~%int16 x_max~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineROI)))
  "Returns full string definition for message of type 'LineROI"
  (cl:format cl:nil "jetauto_interfaces/ROI roi_up~%jetauto_interfaces/ROI roi_center~%jetauto_interfaces/ROI roi_down~%~%================================================================================~%MSG: jetauto_interfaces/ROI~%int16 y_min~%int16 y_max~%int16 x_min~%int16 x_max~%float32 scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineROI>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi_up))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi_down))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineROI>))
  "Converts a ROS message object to a list"
  (cl:list 'LineROI
    (cl:cons ':roi_up (roi_up msg))
    (cl:cons ':roi_center (roi_center msg))
    (cl:cons ':roi_down (roi_down msg))
))
