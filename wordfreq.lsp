#!/usr/bin/newlisp

# Word Frequency Count
# - newLISP v.10.2.4 or later

;; Usage: newlisp wordfreq.lsp < FILENAME

(new Tree 'wc)

(define (main)
  (while (read-line)
    (dolist (word (find-all {\w+} (lower-case (current-line))))
      (wc word (+ (or (wc word) 0) 1))) )
  (dolist (w (sort (wc) (fn (x y) (< (x 1) (y 1)))) )
    ;;       COUNT	WORD
    (println (w 1) "\t" (w 0)))
  (exit))

;; (define (main)
;;   (bayes-train (find-all {\w+} (echo stdin "")) 'wc)
;;   (dotree (w wc true)           ; NOT sort
;;     (println (first (eval w)) "\t" (rest (term w))))
;;   (exit))

(main)
