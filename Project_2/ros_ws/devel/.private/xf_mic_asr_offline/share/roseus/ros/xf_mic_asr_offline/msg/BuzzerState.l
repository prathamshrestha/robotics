;; Auto-generated. Do not edit!


(when (boundp 'xf_mic_asr_offline::BuzzerState)
  (if (not (find-package "XF_MIC_ASR_OFFLINE"))
    (make-package "XF_MIC_ASR_OFFLINE"))
  (shadow 'BuzzerState (find-package "XF_MIC_ASR_OFFLINE")))
(unless (find-package "XF_MIC_ASR_OFFLINE::BUZZERSTATE")
  (make-package "XF_MIC_ASR_OFFLINE::BUZZERSTATE"))

(in-package "ROS")
;;//! \htmlinclude BuzzerState.msg.html


(defclass xf_mic_asr_offline::BuzzerState
  :super ros::object
  :slots (_freq _on_time _off_time _repeat ))

(defmethod xf_mic_asr_offline::BuzzerState
  (:init
   (&key
    ((:freq __freq) 0)
    ((:on_time __on_time) 0.0)
    ((:off_time __off_time) 0.0)
    ((:repeat __repeat) 0)
    )
   (send-super :init)
   (setq _freq (round __freq))
   (setq _on_time (float __on_time))
   (setq _off_time (float __off_time))
   (setq _repeat (round __repeat))
   self)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:on_time
   (&optional __on_time)
   (if __on_time (setq _on_time __on_time)) _on_time)
  (:off_time
   (&optional __off_time)
   (if __off_time (setq _off_time __off_time)) _off_time)
  (:repeat
   (&optional __repeat)
   (if __repeat (setq _repeat __repeat)) _repeat)
  (:serialization-length
   ()
   (+
    ;; uint16 _freq
    2
    ;; float32 _on_time
    4
    ;; float32 _off_time
    4
    ;; uint16 _repeat
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _freq
       (write-word _freq s)
     ;; float32 _on_time
       (sys::poke _on_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _off_time
       (sys::poke _off_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _repeat
       (write-word _repeat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _freq
     (setq _freq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _on_time
     (setq _on_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _off_time
     (setq _off_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _repeat
     (setq _repeat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get xf_mic_asr_offline::BuzzerState :md5sum-) "bf6a6f6f285012bcc0e11a4dd35a61af")
(setf (get xf_mic_asr_offline::BuzzerState :datatype-) "xf_mic_asr_offline/BuzzerState")
(setf (get xf_mic_asr_offline::BuzzerState :definition-)
      "uint16 freq
float32 on_time
float32 off_time
uint16 repeat

")



(provide :xf_mic_asr_offline/BuzzerState "bf6a6f6f285012bcc0e11a4dd35a61af")


