#!/usr/bin/newlisp

# Spell Checker
# - newLISP v.10.2.4 or later required

;; Usage: newlisp spellcheck.lsp < FILENAME

(new Tree 'Dict)

(define (main)
  (device (open "Usr.Dict.Words" "r")) ; ? "/usr/share/dict/words"
  (while (read-line)
    (Dict (current-line) true))
  (close (device))

  (while (read-line)
    (if (Dict (current-line))
        (println (current-line))))

  (exit))

(main)
