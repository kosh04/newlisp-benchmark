#!/usr/bin/newlisp

# List Operations
# - newLISP v.10.2.4 or later required

;; Usage: newlisp listop.lsp 16
;;-> 10000

(setq SIZE 10000)

(define (test-lists)
  (letn ((Li1 (sequence 1 SIZE))
         (Li2 Li1)
         (Li3 '()))
    (reverse Li2)
    (while Li2 (push (pop Li2) Li3 -1))
    (while Li3 (push (pop Li3) Li2 -1))

    (reverse Li1)

    (cond
      ((!= (first Li1) SIZE) 0)
      ((= Li1 Li2) (length Li1))
      (true 0))
    ))

(set 'n (int (main-args 2) 1))

(dotimes (_ n)
  (set 'result (test-lists)))

(println result)
(exit)
