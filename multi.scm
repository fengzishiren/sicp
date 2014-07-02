(define (multi a b)
  (if (= 0 b)
      0
      (+ a (multi a (- b 1)))))
;;
(define (double x)
  (+ x x))
(define (halve x)
  (/ x 2))
(define (even x)
  (= (remainder x 2) 0))

(define (fast-multi a b)
  (cond ((= 0 b) 0)
        ((even b) (fast-multi (double a) (halve b)))
        (else (+ a (fast-multi a (- b 1))))))
(define (fast* x y)
  (fast-iter 0 x y))

(define (fast-iter r a b)
  (cond ((= b 0) r)
        ((even b) (fast-iter r (double a) (halve b)))
        (else (fast-iter (+ r a) a (- b 1)))))
