(load "./1/21")

(define (runtime)
  (use srfi-11)
  (let-values (((a b) (sys-gettimeofday)))
  (+ (* a 1000000) b)))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
    (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes a b)
  (cond ((= a b) (cond ((even? a))
                       (else
                         (if (prime? a) (timed-prime-test a)))))
        ((even? a) (search-for-primes (+ a 1) b))
        (else
          (if (prime? a) (timed-prime-test a))
          (search-for-primes (+ a 1) b))))

(print (search-for-primes 1000000 1000050))
