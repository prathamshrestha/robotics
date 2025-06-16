;; Auto-generated. Do not edit!


(when (boundp 'xf_mic_asr_offline::GetOfflineResult)
  (if (not (find-package "XF_MIC_ASR_OFFLINE"))
    (make-package "XF_MIC_ASR_OFFLINE"))
  (shadow 'GetOfflineResult (find-package "XF_MIC_ASR_OFFLINE")))
(unless (find-package "XF_MIC_ASR_OFFLINE::GETOFFLINERESULT")
  (make-package "XF_MIC_ASR_OFFLINE::GETOFFLINERESULT"))
(unless (find-package "XF_MIC_ASR_OFFLINE::GETOFFLINERESULTREQUEST")
  (make-package "XF_MIC_ASR_OFFLINE::GETOFFLINERESULTREQUEST"))
(unless (find-package "XF_MIC_ASR_OFFLINE::GETOFFLINERESULTRESPONSE")
  (make-package "XF_MIC_ASR_OFFLINE::GETOFFLINERESULTRESPONSE"))

(in-package "ROS")





(defclass xf_mic_asr_offline::GetOfflineResultRequest
  :super ros::object
  :slots (_offline_recognise_start _confidence_threshold _time_per_order ))

(defmethod xf_mic_asr_offline::GetOfflineResultRequest
  (:init
   (&key
    ((:offline_recognise_start __offline_recognise_start) 0)
    ((:confidence_threshold __confidence_threshold) 0)
    ((:time_per_order __time_per_order) 0)
    )
   (send-super :init)
   (setq _offline_recognise_start (round __offline_recognise_start))
   (setq _confidence_threshold (round __confidence_threshold))
   (setq _time_per_order (round __time_per_order))
   self)
  (:offline_recognise_start
   (&optional __offline_recognise_start)
   (if __offline_recognise_start (setq _offline_recognise_start __offline_recognise_start)) _offline_recognise_start)
  (:confidence_threshold
   (&optional __confidence_threshold)
   (if __confidence_threshold (setq _confidence_threshold __confidence_threshold)) _confidence_threshold)
  (:time_per_order
   (&optional __time_per_order)
   (if __time_per_order (setq _time_per_order __time_per_order)) _time_per_order)
  (:serialization-length
   ()
   (+
    ;; int8 _offline_recognise_start
    1
    ;; int8 _confidence_threshold
    1
    ;; int8 _time_per_order
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _offline_recognise_start
       (write-byte _offline_recognise_start s)
     ;; int8 _confidence_threshold
       (write-byte _confidence_threshold s)
     ;; int8 _time_per_order
       (write-byte _time_per_order s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _offline_recognise_start
     (setq _offline_recognise_start (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _offline_recognise_start 127) (setq _offline_recognise_start (- _offline_recognise_start 256)))
   ;; int8 _confidence_threshold
     (setq _confidence_threshold (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _confidence_threshold 127) (setq _confidence_threshold (- _confidence_threshold 256)))
   ;; int8 _time_per_order
     (setq _time_per_order (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _time_per_order 127) (setq _time_per_order (- _time_per_order 256)))
   ;;
   self)
  )

(defclass xf_mic_asr_offline::GetOfflineResultResponse
  :super ros::object
  :slots (_result _fail_reason _text ))

(defmethod xf_mic_asr_offline::GetOfflineResultResponse
  (:init
   (&key
    ((:result __result) "")
    ((:fail_reason __fail_reason) "")
    ((:text __text) "")
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _fail_reason (string __fail_reason))
   (setq _text (string __text))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:fail_reason
   (&optional __fail_reason)
   (if __fail_reason (setq _fail_reason __fail_reason)) _fail_reason)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; string _fail_reason
    4 (length _fail_reason)
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; string _fail_reason
       (write-long (length _fail_reason) s) (princ _fail_reason s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _fail_reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fail_reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass xf_mic_asr_offline::GetOfflineResult
  :super ros::object
  :slots ())

(setf (get xf_mic_asr_offline::GetOfflineResult :md5sum-) "28bc8539466b604fc9101f0b3a34c375")
(setf (get xf_mic_asr_offline::GetOfflineResult :datatype-) "xf_mic_asr_offline/GetOfflineResult")
(setf (get xf_mic_asr_offline::GetOfflineResult :request) xf_mic_asr_offline::GetOfflineResultRequest)
(setf (get xf_mic_asr_offline::GetOfflineResult :response) xf_mic_asr_offline::GetOfflineResultResponse)

(defmethod xf_mic_asr_offline::GetOfflineResultRequest
  (:response () (instance xf_mic_asr_offline::GetOfflineResultResponse :init)))

(setf (get xf_mic_asr_offline::GetOfflineResultRequest :md5sum-) "28bc8539466b604fc9101f0b3a34c375")
(setf (get xf_mic_asr_offline::GetOfflineResultRequest :datatype-) "xf_mic_asr_offline/GetOfflineResultRequest")
(setf (get xf_mic_asr_offline::GetOfflineResultRequest :definition-)
      "int8 offline_recognise_start
int8 confidence_threshold 
int8 time_per_order
---
string result
string fail_reason 
string text

")

(setf (get xf_mic_asr_offline::GetOfflineResultResponse :md5sum-) "28bc8539466b604fc9101f0b3a34c375")
(setf (get xf_mic_asr_offline::GetOfflineResultResponse :datatype-) "xf_mic_asr_offline/GetOfflineResultResponse")
(setf (get xf_mic_asr_offline::GetOfflineResultResponse :definition-)
      "int8 offline_recognise_start
int8 confidence_threshold 
int8 time_per_order
---
string result
string fail_reason 
string text

")



(provide :xf_mic_asr_offline/GetOfflineResult "28bc8539466b604fc9101f0b3a34c375")


