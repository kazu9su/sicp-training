(define (pascal x y)
  (if (or (= x y) (= x 1))
    1
    (+ (pascal (- x 1) (- y 1)) (pascal x (- y 1)))))

(print (pascal 1 1))
(print (pascal 2 3))
(print (pascal 4 5))
(print (pascal 3 5))
(print (pascal 2 5))
