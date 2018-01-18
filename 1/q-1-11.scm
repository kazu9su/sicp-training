(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(print (f 2))
(print (f 3))
(print (f 4))

(define (f2 n)
    (f2-iter 3 3 3 n))

(define (f2-iter a b c count)
  (if (< count 3)
    (+ a b c)
    (f2-iter a (* 2 (- a 1)) (* 3 (- a 2)) (- count 1)))
)

(print (f2 4))
