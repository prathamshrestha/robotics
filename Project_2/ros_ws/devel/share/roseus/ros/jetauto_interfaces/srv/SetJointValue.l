;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetJointValue)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetJointValue (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETJOINTVALUE")
  (make-package "JETAUTO_INTERFACES::SETJOINTVALUE"))
(unless (find-package "JETAUTO_INTERFACES::SETJOINTVALUEREQUEST")
  (make-package "JETAUTO_INTERFACES::SETJOINTVALUEREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETJOINTVALUERESPONSE")
  (make-package "JETAUTO_INTERFACES::SETJOINTVALUERESPONSE"))

(in-package "ROS")





(defclass jetauto_interfaces::SetJointValueRequest
  :super ros::object
  :slots (_joint_value ))

(defmethod jetauto_interfaces::SetJointValueRequest
  (:init
   (&key
    ((:joint_value __joint_value) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_value __joint_value)
   self)
  (:joint_value
   (&optional __joint_value)
   (if __joint_value (setq _joint_value __joint_value)) _joint_value)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint_value
    (* 4    (length _joint_value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint_value
     (write-long (length _joint_value) s)
     (dotimes (i (length _joint_value))
       (sys::poke (elt _joint_value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetJointValueResponse
  :super ros::object
  :slots (_success _position _orientation ))

(defmethod jetauto_interfaces::SetJointValueResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _position __position)
   (setq _orientation __orientation)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32[] _position
    (* 4    (length _position)) 4
    ;; float32[] _orientation
    (* 4    (length _orientation)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _orientation
     (write-long (length _orientation) s)
     (dotimes (i (length _orientation))
       (sys::poke (elt _orientation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _orientation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orientation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _orientation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetJointValue
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetJointValue :md5sum-) "f30e2e31fba61d3992775965b6a52966")
(setf (get jetauto_interfaces::SetJointValue :datatype-) "jetauto_interfaces/SetJointValue")
(setf (get jetauto_interfaces::SetJointValue :request) jetauto_interfaces::SetJointValueRequest)
(setf (get jetauto_interfaces::SetJointValue :response) jetauto_interfaces::SetJointValueResponse)

(defmethod jetauto_interfaces::SetJointValueRequest
  (:response () (instance jetauto_interfaces::SetJointValueResponse :init)))

(setf (get jetauto_interfaces::SetJointValueRequest :md5sum-) "f30e2e31fba61d3992775965b6a52966")
(setf (get jetauto_interfaces::SetJointValueRequest :datatype-) "jetauto_interfaces/SetJointValueRequest")
(setf (get jetauto_interfaces::SetJointValueRequest :definition-)
      "float32[] joint_value
---
bool success
float32[] position
float32[] orientation

")

(setf (get jetauto_interfaces::SetJointValueResponse :md5sum-) "f30e2e31fba61d3992775965b6a52966")
(setf (get jetauto_interfaces::SetJointValueResponse :datatype-) "jetauto_interfaces/SetJointValueResponse")
(setf (get jetauto_interfaces::SetJointValueResponse :definition-)
      "float32[] joint_value
---
bool success
float32[] position
float32[] orientation

")



(provide :jetauto_interfaces/SetJointValue "f30e2e31fba61d3992775965b6a52966")


