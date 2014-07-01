(define (expt b counter product)
  (if (= counter 0)
      product
      (expt b (- counter 1) (* product b))))

(define (fast-expt b n)
  (fast-iter 1 2 n))

(define (even? x)
  (= (remainder x 2) 0))

(define (fast-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-iter a (square b) (/ n 2)))
        (else (fast-iter (* a b) b (- n 1)))))
