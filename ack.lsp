#!/usr/bin/newlisp -s10000

# Ackermann's Function

;; Usage: newlisp -s 10000 ack.lsp 8
;; -> Ack(3,8)=2045

(define (ack m n)
  (cond
    ((= m 0) (+ n 1))
    ((= n 0) (ack (- m 1) 1))
    (true    (ack (- m 1)
                  (ack m (- n 1))))))

;; (define (ack m n)
;;   (if (= m 0) (+ n 1)
;;       (= n 0) (ack (- m 1) 1)
;;       true    (ack (- m 1) (ack m (- n 1)))))

(setq n (int (main-args -1) 0))
(print (format "Ack(3,%d)=%d\n" n (ack 3 n)))

(exit)
