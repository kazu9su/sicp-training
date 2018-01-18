(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(print (fast-expt 2 4))

(define (new-expt b n a)
  (cond ((= n 0) a)
        ((even? n) (new-expt b (/ n 2) (* 2 (square b))))
        (else (* b (new-expt b (- n 1) a)))))

(print (new-expt 2 5 1))
