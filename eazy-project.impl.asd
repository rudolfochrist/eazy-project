
(defsystem eazy-project.impl
  :version "0.1"
  :author "Masataro Asai"
  :license "LLGPL"
  :depends-on (:trivial-shell
               :asdf
               :optima
               :cl-emb
               :osicat
               :cl-syntax
               :cl-syntax-annot
               :local-time
               :iterate
               #+sbcl :sb-cltl2
               )
  :components ((:module "src"
                :components
                ((:file :namespace)
                 (:file :package)
                 (:file :specials)
                 (:file :defmenu)
                 (:file :ask)
                 (:file :loop)
                 (:file :menu-definitions)
                 (:module "create"
                          :components
                          ((:file :global)
                           (:file :project-local)
                           (:file :actually-create-project)))
                 (:module "restore"
                          :components
                          ((:file :restore))))
                :serial t))
  :description "Generate and Manage a Project"
  :in-order-to ((test-op (load-op eazy-project.test))))
