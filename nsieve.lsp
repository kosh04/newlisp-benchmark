#!/usr/bin/newlisp -n -s10000

# Nsieve benchmark
# - requires newLISP v10.2.4 or later

# Usage: newlisp nsieve.lsp

;; NOTE: Using array is faster than a list
(define (nsieve m)
  (let ((primes (array m '(true)))      ; or (dup true (+ m 1))
        (cnt 0))
    (for (i 2 (- m 1))
      (when (primes i)
        (for (j (<< i 1) (- m 1) i (< m j))
          (setf (primes j) nil))
        (++ cnt)))
    cnt))

;; (define (nsieve m)
;;   (let ((primes (dup "\001" m))
;;         (cnt 0))
;;     (for (i 2 m)
;;       (when (= 001 (get-char (+ (address primes) i)))
;;         (for (j (<< i 1) m i (< m j))
;;           (cpymem "\000" (+ (address primes) j) 1))
;;         (++ cnt)))
;;     cnt))

(define (nsieve-factor m)
  (let ((prime? (lambda (n)
                  (= 1 (length (factor n))))))
    (length (filter prime? (sequence 2 m)))))

(define (main proc)
  (for (i 0 9)
    (let ((m (<< 10000 i)))
      (print (format "Primes up to %8u %8u\n" m (proc m))))))

(main nsieve)
;(main nsieve-factor)

(exit)
