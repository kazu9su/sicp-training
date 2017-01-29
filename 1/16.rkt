#lang racket

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (* (fast-expt b (/ n 2)) (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (fast-expt-rep b n)
  (define (fast-expt2 a b n)
    (define (square x) (* x x))
    (cond ((= n 0) a)
    ((even? n) (fast-expt2 a (square b) (/ n 2)))
    (else (fast-expt2 (* a b) b (- n 1)))))
  (fast-expt2 1 b n))

(fast-expt 2 11)
(fast-expt-rep 2 11)
