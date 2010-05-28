#!/usr/bin/newlisp

# Array Access
# - newLISP v.10.2.4 or later required

;; Usage: newlisp array.lsp 7000
;; -> 1000 7000000

(define (main n)
  (let ((x (array n (sequence 1 n)))
        (y (array n '(0))))
    (dotimes (k 1000)
      (for (i (- n 1) 0)
        (setf (y i) (+ $it (x i)))      ; (++ (y i) (x i))
        ))
    (println (y 0) " " (y (- n 1)))))

(setq n (int (main-args 2) 10))
(main n)

(exit)
