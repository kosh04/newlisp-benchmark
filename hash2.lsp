#!/usr/bin/env newlisp

# Hashes, Part II
# - newLISP v.10.2.4 or later required

;; Usage: newlisp hash2.lsp 150
;; -> 1 9999 150 1499850

(new Tree 'Hash1)
(new Tree 'Hash2)

(define (main n)
  (dotimes (i 10000)
    (Hash1 (format "foo_%d" i) i))
  (dotimes (i n)
    (dotree (k Hash1 true)
      (Hash2 (rest (term k))          ; "_foo_1" -> "foo_1"
             (+ (or (Hash2 (rest (term k))) 0)
                (eval k)))
      ))
  (println (Hash1 "foo_1") " " (Hash1 "foo_9999") " "
           (Hash2 "foo_1") " " (Hash2 "foo_9999"))
  (exit))

(setq n (int (main-args 2) 1))
(main n)
