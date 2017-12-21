(define (sqrt-itr guess x)
    (if (good-enough? guess x)
    guess
    (sqrt-itr (improve guess x)
        x)))

(define (improve guess x)
    (average guess(/ x guess)))
(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-itr 1.0 x))

(print (sqrt 9))

(print (sqrt (+ 100 37)))

(print (sqrt (+ (sqrt 2) (sqrt 3))))

(print (square (sqrt 1000)))

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))

(print (new-if (= 2 3) 0 5))
(print (new-if (= 1 1) 0 5))
