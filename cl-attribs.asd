;;;; cl-attribs.asd

(asdf:defsystem #:cl-attribs
  :serial t
  :description "Describe cl-attribs here"
  :author "Farzad"
  :license "GNU"
  :depends-on (#:closer-mop)
  :components ((:file "package")
               (:file "cl-attribs")))

