(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess previous)
  (< (abs (- guess previous)) 0.0000000000000000000000000000000000000000000000000000000000000001))

(define (sqrt-iter guess previous x)
  (if (good-enough? guess previous)
    guess
    (sqrt-iter (improve guess x) guess x)))

(define (sqrt x)
  (sqrt-iter 1.0 0 x))

(print (square 2.0))
(print (sqrt 9))
(print (sqrt 0.0000000000000000000000000000000000000000000000000001456))
(print (sqrt 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000))
(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(print (new-if (= 2 3) 0 5))
(print (new-if (= 1 1) 0 5))
