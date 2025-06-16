
(cl:in-package :asdf)

(defsystem "hiwonder_servo_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetServoState" :depends-on ("_package_GetServoState"))
    (:file "_package_GetServoState" :depends-on ("_package"))
    (:file "SetReadTimeout" :depends-on ("_package_SetReadTimeout"))
    (:file "_package_SetReadTimeout" :depends-on ("_package"))
  ))