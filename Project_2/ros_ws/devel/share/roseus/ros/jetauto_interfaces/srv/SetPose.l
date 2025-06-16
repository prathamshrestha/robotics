;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetPose)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetPose (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETPOSE")
  (make-package "JETAUTO_INTERFACES::SETPOSE"))
(unless (find-package "JETAUTO_INTERFACES::SETPOSEREQUEST")
  (make-package "JETAUTO_INTERFACES::SETPOSEREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETPOSERESPONSE")
  (make-package "JETAUTO_INTERFACES::SETPOSERESPONSE"))

(in-package "ROS")





(defclass jetauto_interfaces::SetPoseRequest
  :super ros::object
  :slots (_position _orientation _tolerance _resolution ))

(defmethod jetauto_interfaces::SetPoseRequest
  (:init
   (&key
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tolerance __tolerance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:resolution __resolution) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _tolerance __tolerance)
   (setq _resolution (float __resolution))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:serialization-length
   ()
   (+
    ;; float32[] _position
    (* 4    (length _position)) 4
    ;; float32[] _orientation
    (* 4    (length _orientation)) 4
    ;; float32[] _tolerance
    (* 4    (length _tolerance)) 4
    ;; float32 _resolution
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; float32[] _tolerance
     (write-long (length _tolerance) s)
     (dotimes (i (length _tolerance))
       (sys::poke (elt _tolerance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; float32[] _tolerance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tolerance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tolerance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass jetauto_interfaces::SetPoseResponse
  :super ros::object
  :slots (_success _pulse _min_variation _current_pulse ))

(defmethod jetauto_interfaces::SetPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:pulse __pulse) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:min_variation __min_variation) 0)
    ((:current_pulse __current_pulse) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _pulse __pulse)
   (setq _min_variation (round __min_variation))
   (setq _current_pulse __current_pulse)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:pulse
   (&optional __pulse)
   (if __pulse (setq _pulse __pulse)) _pulse)
  (:min_variation
   (&optional __min_variation)
   (if __min_variation (setq _min_variation __min_variation)) _min_variation)
  (:current_pulse
   (&optional __current_pulse)
   (if __current_pulse (setq _current_pulse __current_pulse)) _current_pulse)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32[] _pulse
    (* 4    (length _pulse)) 4
    ;; uint32 _min_variation
    4
    ;; float32[] _current_pulse
    (* 4    (length _current_pulse)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _pulse
     (write-long (length _pulse) s)
     (dotimes (i (length _pulse))
       (sys::poke (elt _pulse i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _min_variation
       (write-long _min_variation s)
     ;; float32[] _current_pulse
     (write-long (length _current_pulse) s)
     (dotimes (i (length _current_pulse))
       (sys::poke (elt _current_pulse i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _pulse
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pulse (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pulse i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32 _min_variation
     (setq _min_variation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _current_pulse
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_pulse (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current_pulse i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetPose
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetPose :md5sum-) "aa945394df579f83610f305a314044bd")
(setf (get jetauto_interfaces::SetPose :datatype-) "jetauto_interfaces/SetPose")
(setf (get jetauto_interfaces::SetPose :request) jetauto_interfaces::SetPoseRequest)
(setf (get jetauto_interfaces::SetPose :response) jetauto_interfaces::SetPoseResponse)

(defmethod jetauto_interfaces::SetPoseRequest
  (:response () (instance jetauto_interfaces::SetPoseResponse :init)))

(setf (get jetauto_interfaces::SetPoseRequest :md5sum-) "aa945394df579f83610f305a314044bd")
(setf (get jetauto_interfaces::SetPoseRequest :datatype-) "jetauto_interfaces/SetPoseRequest")
(setf (get jetauto_interfaces::SetPoseRequest :definition-)
      "float32[] position
float32[] orientation
float32[] tolerance
float32 resolution
---
bool success
float32[] pulse
uint32 min_variation
float32[] current_pulse

")

(setf (get jetauto_interfaces::SetPoseResponse :md5sum-) "aa945394df579f83610f305a314044bd")
(setf (get jetauto_interfaces::SetPoseResponse :datatype-) "jetauto_interfaces/SetPoseResponse")
(setf (get jetauto_interfaces::SetPoseResponse :definition-)
      "float32[] position
float32[] orientation
float32[] tolerance
float32 resolution
---
bool success
float32[] pulse
uint32 min_variation
float32[] current_pulse

")



(provide :jetauto_interfaces/SetPose "aa945394df579f83610f305a314044bd")


