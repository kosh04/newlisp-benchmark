#!/usr/bin/env newlisp

# Fibonacci Numbers

;; Usage: newlisp fibo.lsp 32
;; -> fib(32)=3524578

(define (fib n)
  (if (< n 2)
      1
    (+ (fib (- n 2))
       (fib (- n 1)))))

(define (main )
  (let (n (int (main-args 2) 1))
    (print (format "fib(%d)=%d\n" n (fib n))))
  (exit))

(main)
