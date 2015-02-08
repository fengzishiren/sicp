;;
;; f(x, y) = x(1+xy)^2 + y(1-y) + y(1-y) + (1+xy)(1-y)
;;
(define (f x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x (square a))
       (* y b)
       (* a b))))
;;
(define (f1 x y)
  ((lambda (a b)
    (+ (* x (square a))
       (* y b)
       (* a b)))
   (+ 1 (* x y))
   (- 1 y)))
;;
(define (f2 x y)
  (define a (+ 1 (* x y)))
  (define b (- 1 y))
  (+ (x (quare a))
     (* y b)
     (* a b)))

