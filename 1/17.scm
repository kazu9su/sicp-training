(define (hoge-* a b)
  (if (= b 0)
    0
    (+ a (hoge-* a (- b 1)))))

(print (hoge-* 2 2))
(print (hoge-* 2 8))
(print (hoge-* 2 10000000))

(define (double a)
(* a 2))
(define (halve a)
  (if (even? a)
    (/ a 2)
    "cannot halve"))

(print (halve 3))
(print (halve 4))
(print (halve 2))

(define (fast-* a b)
  (cond ((= b 0) 0)
    ((= b 1) a)
    ((even? b) (double (fast-* a (halve b))))
    (else (+ a (fast-* a (- b 1))))))

(print (fast-* 2 0))
(print (fast-* 2 1))
(print (fast-* 2 2))
(print (fast-* 2 3))
(print (fast-* 2 10000000))
