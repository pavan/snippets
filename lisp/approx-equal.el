;; Code that I found which seems interesting
;; Implements approximate-equal; little tricky
;; Pavan Gunupudi
;; Not my copyright; copy at your own risk

(defvar fuzz-factor 1.0e-6)
(defun approx-equal (x y)
  (or (= x y)
      (< (/ (abs (- x y))
            (max (abs x) (abs y)))
         fuzz-factor)))
