#lang racket

(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))

(+ 1 2)
