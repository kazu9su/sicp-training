#lang racket

(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(f 3)

(define (ff n)
  (define (iter new old old2 count)
    (cond ((= count 0) old2)
          ((= count 1) old)
          (else (iter (+ new (* 2 old) (* 3 old2)) new old (- count 1)))))
  (iter 2 1 0 n))

(ff 3)
