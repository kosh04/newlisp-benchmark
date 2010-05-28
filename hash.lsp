#!/usr/bin/env newlisp

# Hash (Associative Array) Access
# - newLISP v.10.2.4 or later required

# Usage: newlisp hash.lsp 80000
# -> 13880

(new Tree 'Hash)

(define (main n)
  (let ((cnt 0))
    (for (i 1 n +1)
      (Hash (format "%x" i) i))
    (for (i n 1 -1)
      (if (Hash (format "%d" i))
          (++ cnt)))
    (println cnt))
  (exit))

(setq n (int (main-args 2) 10))
(main)
