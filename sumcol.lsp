#!/usr/bin/newlisp

# Sum a Column of Integers

;; Usage: newlisp sumcol.lsp < FILENAME

(setq sum 0)
(while (read-line)
  (++ sum))
(println sum)

(exit)
