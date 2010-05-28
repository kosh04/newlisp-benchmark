#!/usr/bin/newlisp

# Nested Loops
# - newLISP v.10.2.4 or later required

;; Usage: newlisp nestedloop.lsp 16
;; -> 16777216

(setq n (int (main-args 2) 1))
(setq x 0)

(dotimes (a n)
  (dotimes (b n)
    (dotimes (c n)
      (dotimes (d n)
        (dotimes (e n)
          (dotimes (f n)
            (++ x)))))))
(println x)

(exit)
