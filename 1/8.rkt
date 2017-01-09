#lang racket

(define (cbrt-itr guess guess-pre x)
  (if (good-enough? guess guess-pre)
    guess
    (cbrt-itr(improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess guess-pre)
  (< (/ (abs (- guess guess-pre)) guess) 0.0001))

(define (cbrt x)
  (cbrt-itr 1.0 100.0 x))

(cbrt 8)
