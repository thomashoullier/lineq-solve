;;;; Solving systems of linear equations.
(in-package :lineq-solve)

(defclass a-solver ()
  ((lu :documentation "LU decomposition matrix." :reader lu :initarg :lu)
   (p :documentation "Row permutation vector." :reader p :initarg :p)))

(defun make-a-solver (A)
  "Create a solver instance from square matrix A."
  (let ((lu) (p))
    (multiple-value-setq (lu p) (lup-decomp:gauss-partial A))
    (make-instance 'a-solver :lu lu :p p)))

(defmethod solve ((a-solver a-solver) b)
  "Solve for x in A.x = b using already instanced solver."
  (with-slots ((lu lu) (p p)) a-solver (lup-solve:solve lu p b)))

(defun quick-solve (A b)
  "Quality of life function: solve for A.x=b where A only serves once."
  (solve (make-a-solver A) b))
