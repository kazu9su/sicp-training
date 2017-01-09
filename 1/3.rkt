#lang racket

(define (square-large-two-num x y z) (cond ((or (> x y z) (> y x z)) (+ (* x x) (* y y)))
                                           ((or (> x z y) (> z x y)) (+ (* x x) (* z z)))
                                           (else (+ (* y y) (* z z)))
                                     ))

(square-large-two-num 2 1 3)

