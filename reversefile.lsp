#!/usr/bin/newlisp

# Reverse a File
# - newLISP v.10.2.4 or later required

;; Usage: newlisp reversefile.lsp < FILENAME

(while (read-line)
  (push (append (current-line) "\n") lines -1))
(print (join (reverse lines)))

(exit)
