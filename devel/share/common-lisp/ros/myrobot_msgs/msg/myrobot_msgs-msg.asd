
(cl:in-package :asdf)

(defsystem "myrobot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "led" :depends-on ("_package_led"))
    (:file "_package_led" :depends-on ("_package"))
  ))