#lang racket

(define (pas x y)
 (if (or (= x 1) (= y 1) (= x y))
   1
   (+ (pas (- x 1) (- y 1)) (pas (- x 1) y))))

(pas 4 3)
(pas 5 3)
(pas 6 2)
(pas 6 3)
(pas 6 4)
(pas 6 5)
(pas 6 6)
