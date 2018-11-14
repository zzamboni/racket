#lang racket
(define (twice n)
  (* n 2))

(twice 3)
(twice 6)

(module+ test
  (require rackunit)
  (check-equal? (twice 0) 0)
  (check-equal? (twice 2) 4))
