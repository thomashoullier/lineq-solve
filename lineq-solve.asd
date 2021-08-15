(defsystem lineq-solve
  :name "lineq-solve"
  :author "Thomas HOULLIER"
  :depends-on ("lup-decomp" "lup-solve")
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "lineq-solve" :depends-on ("package")))))
  :in-order-to ((test-op (test-op "lineq-solve/test"))))

(defsystem lineq-solve/test
  :name "lineq-solve/test"
  :depends-on ("rove" "lineq-solve")
  :components
  ((:module "test"
    :components ((:file "rove-suite"))))
  :perform (test-op (o c) (symbol-call :rove '#:run c)))
