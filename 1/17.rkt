#lang racket

(define (double a)
  (+ a a))

(define (halve a)
  (if (even? a)
    (/ a 2)
    a))

(double 2)
(halve 4)
(halve 3)

(define (double_n a n)
  (if (= n 0)
    a
    (double_n (double a) (- n 1))))

(define (* a b)
  (cond ((= b 0) 0)
        ((even? b) (double_n a (halve b)))
        (else (+ a (* a (- b 1))))))

(halve 2)
(* 2 2)

(* 2 3)
