(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess previous)
  (< (abs (- guess previous)) 0.0000000000000000000000000000000000000000000000000000000000000001))

(define (cbrt x)
  (cbrt-iter 1.0 0.0 x))

(define (cbrt-iter guess previous x)
  (if (good-enough? guess previous)
    guess
    (cbrt-iter (improve guess x) guess x)))

(print (cbrt 9))
