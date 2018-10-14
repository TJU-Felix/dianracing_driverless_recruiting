
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Fun_xyz" :depends-on ("_package_Fun_xyz"))
    (:file "_package_Fun_xyz" :depends-on ("_package"))
  ))