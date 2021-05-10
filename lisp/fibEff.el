;; Fibonacci in lisp -- trying to unroll recursion and be more efficient
;; (c) Pavan Gunupudi

(defun fibonacciEff (N)
  "Fibonacci Numbers"
  (setq fe::f0 1)
  (setq fe::f1 1)
  (setq fe::f2 0)
  (setq fe::index 3)

  (while (<= fe::index N)
    (setq fe::f2 (+ fe::f0 fe::f1))
    (setq fe::f0 fe::f1)
    (setq fe::f1 fe::f2)
    (setq fe::index (+ 1 fe::index))
    )
  fe::f1
  )
