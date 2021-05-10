;; Code to recursively compute the Nth Fibonacci number
;; Taken from https://www2.cs.sfu.ca/CourseCentral/310/pwfong/Lisp/1/tutorial1.html

(defun fibonacci (N)
  "Compute the N'th Fibonacci number."
  (if (or (= N 0) (= N 1))
      1
    (+ (fibonacci (- N 1)) (fibonacci (- N 2)))))
