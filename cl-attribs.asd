;;;; cl-attribs.asd

(asdf:defsystem #:cl-attribs
  :serial t
  :description "Provides a functionality that allows CLOS objects to have attributes specific for each of their slots."
  :author "farzadbekran@gmail.com"
  :license "You are free to do anything you want with it."
  :depends-on (#:closer-mop)
  :components ((:file "package")
               (:file "cl-attribs")))

