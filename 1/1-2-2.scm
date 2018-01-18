(define (count-charge amount)
  (cc amount 5))

(define (cc amount kind-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kind-of-coins 0)) 0)
        (else (+ (cc amount (- kind-of-coins 1))
                 (cc (- amount (first-denomination kind-of-coins)) kind-of-coins)))))

(define (first-denomination kind-of-coins)
  (cond ((= kind-of-coins 1) 1)
        ((= kind-of-coins 2) 5)
        ((= kind-of-coins 3) 10)
        ((= kind-of-coins 4) 25)
        ((= kind-of-coins 5) 50)))

(print (count-charge 1))
(print (count-charge 2))
(print (count-charge 3))
(print (count-charge 4))
(print (count-charge 5))
(print (count-charge 6))
(print (count-charge 7))
(print (count-charge 8))
(print (count-charge 9))
(print (count-charge 10))
(print (count-charge 11))
(print (count-charge 12))
(print (count-charge 13))
(print (count-charge 14))
(print (count-charge 16))
(print (count-charge 17))
(print (count-charge 18))
(print (count-charge 19))
(print (count-charge 20))
(print (count-charge 21))
(print (count-charge 22))
(print (count-charge 23))
(print (count-charge 24))
(print (count-charge 25))
(print (count-charge 26))
(print (count-charge 27))
(print (count-charge 28))
(print (count-charge 29))