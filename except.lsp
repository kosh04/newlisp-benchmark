#!/usr/bin/newlisp

# Exception Mechanisms
# -  newLISP v.10.2.4 or later required

;; Usage: newlisp except.lsp 200000
;; -> Exceptions: HI=100000 / LO=100000

(set 'HI 0 'LO 0)

(define (some_function num)
  (catch (hi_function num) 'result)
  (if (not (number? result))
      (throw-error "we never get here")))

(define (hi_function num)
  (catch (lo_function num) 'result)
  (if (= result 'HI_exception)
      (inc HI)
    (throw result)))

(define (lo_function num)
  (catch (blowup num) 'result)
  (if (= result 'LO_exception)
      (inc LO)
    (throw result)))

(define (blowup num)
  (if (= (& num 1) 1)
      (throw 'HI_exception)
    (throw 'LO_exception)))

(define (main)
  (let (n (int (main-args 2) 0))
    (dotimes (i n)
      (some_function i)))
  (println "Exceptions: HI=" HI " / LO=" LO)
  (exit))

(main)
