;; Auto-generated. Do not edit!


(when (boundp 'jetauto_interfaces::SetStringList)
  (if (not (find-package "JETAUTO_INTERFACES"))
    (make-package "JETAUTO_INTERFACES"))
  (shadow 'SetStringList (find-package "JETAUTO_INTERFACES")))
(unless (find-package "JETAUTO_INTERFACES::SETSTRINGLIST")
  (make-package "JETAUTO_INTERFACES::SETSTRINGLIST"))
(unless (find-package "JETAUTO_INTERFACES::SETSTRINGLISTREQUEST")
  (make-package "JETAUTO_INTERFACES::SETSTRINGLISTREQUEST"))
(unless (find-package "JETAUTO_INTERFACES::SETSTRINGLISTRESPONSE")
  (make-package "JETAUTO_INTERFACES::SETSTRINGLISTRESPONSE"))

(in-package "ROS")





(defclass jetauto_interfaces::SetStringListRequest
  :super ros::object
  :slots (_data ))

(defmethod jetauto_interfaces::SetStringListRequest
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetStringListResponse
  :super ros::object
  :slots (_success _message ))

(defmethod jetauto_interfaces::SetStringListResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jetauto_interfaces::SetStringList
  :super ros::object
  :slots ())

(setf (get jetauto_interfaces::SetStringList :md5sum-) "1f446846928755f68919cab6862f6368")
(setf (get jetauto_interfaces::SetStringList :datatype-) "jetauto_interfaces/SetStringList")
(setf (get jetauto_interfaces::SetStringList :request) jetauto_interfaces::SetStringListRequest)
(setf (get jetauto_interfaces::SetStringList :response) jetauto_interfaces::SetStringListResponse)

(defmethod jetauto_interfaces::SetStringListRequest
  (:response () (instance jetauto_interfaces::SetStringListResponse :init)))

(setf (get jetauto_interfaces::SetStringListRequest :md5sum-) "1f446846928755f68919cab6862f6368")
(setf (get jetauto_interfaces::SetStringListRequest :datatype-) "jetauto_interfaces/SetStringListRequest")
(setf (get jetauto_interfaces::SetStringListRequest :definition-)
      "string[] data
---
bool success
string message

")

(setf (get jetauto_interfaces::SetStringListResponse :md5sum-) "1f446846928755f68919cab6862f6368")
(setf (get jetauto_interfaces::SetStringListResponse :datatype-) "jetauto_interfaces/SetStringListResponse")
(setf (get jetauto_interfaces::SetStringListResponse :definition-)
      "string[] data
---
bool success
string message

")



(provide :jetauto_interfaces/SetStringList "1f446846928755f68919cab6862f6368")


