
(cl:in-package :asdf)

(defsystem "virtual_wall-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Wall" :depends-on ("_package_Wall"))
    (:file "_package_Wall" :depends-on ("_package"))
  ))