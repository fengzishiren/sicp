(define (fact x)
  (if (= 1 x)
      x
      (* x (fact (- x 1)))))

