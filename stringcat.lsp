#!/usr/bin/newlisp

# string Concatenation
# - newLISP v.10.2.4 or later required

;; Usage: newlisp stringcat.lsp 40000
;; -> 240000

(setq n (int (main-args 2) 0))
(setq str "")

(dotimes (_ n)
  (write str "hello\n"))
(println (length str))

(exit)
