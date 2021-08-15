(defpackage :lineq-solve/test
  (:use :cl :rove))
(in-package :lineq-solve/test)

(deftest lineq-solve
  (let ((a1 #2A((1 2 0) (3 4 4) (5 6 3)))
        (b1 #(3 7 8))
        (val-x1 #(-7/5 11/5 3/5))
        (a-solver1))
    (testing "make-a-solver"
      (pass (setf a-solver1 (lineq-solve:make-a-solver a1))))
    (testing "solve"
      (ok (equalp val-x1 (lineq-solve:solve a-solver1 b1)) ""))
    (testing "quick-solve"
      (ok (equalp val-x1 (lineq-solve:quick-solve a1 b1)) ""))))
