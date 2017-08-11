#lang rash
 
;; basic pipeline stuff
ls -l /dev | grep tty | wc

;; escape to racket
ls $(if (even? (random 10)) '-a '-l)

;; if the first character on the line is an open paren, it is read as
;; normal racket until the matching close paren and not wrapped in a pipeline
(require racket/list)
(begin 'foo 'bar)
(define my-favorite-flag "-l")
ls $my-favorite-flag

;; after escaping into racket syntax, you can escape back with rash macro and friends
ls $(rash/trim "dirname $(rash/trim \"pwd\")")

;; guillemets are enabled for nestable string delimiters
ls $(rash/trim «dirname $(rash/trim «pwd»)»)

;; $$ escapes to racket but splices the result
(require file/glob)
cat $$(glob "*.rkt")