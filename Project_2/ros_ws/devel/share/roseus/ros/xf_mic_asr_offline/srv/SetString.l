;; Auto-generated. Do not edit!


(when (boundp 'xf_mic_asr_offline::SetString)
  (if (not (find-package "XF_MIC_ASR_OFFLINE"))
    (make-package "XF_MIC_ASR_OFFLINE"))
  (shadow 'SetString (find-package "XF_MIC_ASR_OFFLINE")))
(unless (find-package "XF_MIC_ASR_OFFLINE::SETSTRING")
  (make-package "XF_MIC_ASR_OFFLINE::SETSTRING"))
(unless (find-package "XF_MIC_ASR_OFFLINE::SETSTRINGREQUEST")
  (make-package "XF_MIC_ASR_OFFLINE::SETSTRINGREQUEST"))
(unless (find-package "XF_MIC_ASR_OFFLINE::SETSTRINGRESPONSE")
  (make-package "XF_MIC_ASR_OFFLINE::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass xf_mic_asr_offline::SetStringRequest
  :super ros::object
  :slots (_data ))

(defmethod xf_mic_asr_offline::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xf_mic_asr_offline::SetStringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod xf_mic_asr_offline::SetStringResponse
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

(defclass xf_mic_asr_offline::SetString
  :super ros::object
  :slots ())

(setf (get xf_mic_asr_offline::SetString :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get xf_mic_asr_offline::SetString :datatype-) "xf_mic_asr_offline/SetString")
(setf (get xf_mic_asr_offline::SetString :request) xf_mic_asr_offline::SetStringRequest)
(setf (get xf_mic_asr_offline::SetString :response) xf_mic_asr_offline::SetStringResponse)

(defmethod xf_mic_asr_offline::SetStringRequest
  (:response () (instance xf_mic_asr_offline::SetStringResponse :init)))

(setf (get xf_mic_asr_offline::SetStringRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get xf_mic_asr_offline::SetStringRequest :datatype-) "xf_mic_asr_offline/SetStringRequest")
(setf (get xf_mic_asr_offline::SetStringRequest :definition-)
      "string data
---
bool success
string message

")

(setf (get xf_mic_asr_offline::SetStringResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get xf_mic_asr_offline::SetStringResponse :datatype-) "xf_mic_asr_offline/SetStringResponse")
(setf (get xf_mic_asr_offline::SetStringResponse :definition-)
      "string data
---
bool success
string message

")



(provide :xf_mic_asr_offline/SetString "546971982e3fbbd5a41e60fb6432e357")


