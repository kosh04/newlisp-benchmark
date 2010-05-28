#!/usr/bin/newlisp

# Count Lines/Words/Chars
# - newLISP v.10.2.4 or later required

;; Usage: newlisp wc.lsp < FILENAME

(setf nc 0 nw 0 nl 0)

(while (read-line)
  (++ nl)
  (++ nw (length (find-all {\w+} (current-line))))
  (++ nc (+ (length (current-line)) 1))) ;; add back the line feed

;;       LINE    WORD    CHAR
(println nl "\t" nw "\t" nc)

(exit)
