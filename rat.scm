(define (make-rat n d)
 ((lambda (z)
    (let ((g (gcd (car z) (cdr z))))
      (cons (/ (car z) g) (/ (cdr z) g))))
  (if (positive? (* n d))
      (cons (abs n) (abs d))
      (cons (- (abs n)) (abs d)))))

(define (number x)
  (car x))

(define (denom x)
  (cdr x))

(define (print-rat x)
  (display (number x))
  (display "/")
  (display (denom x))
  (newline))

(define (add-rat x y)
  (make-rat (+ (* (number x) (denom y))
               (* (number y) (denom x)))
            (* (denom x) (denom y))))
