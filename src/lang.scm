
;
;;
;; sequence operations:
;; filter
;; accumulate
;; range
;; enumerate-interval
;;
;
(define (filter predicate sequence)
  (cond ((null? sequence) '())
        ((predicate (car sequence))
         (cons (car sequence) (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(define (accumulate op initial sequence)
  (if (null? sequence) initial
      (op (car sequence) 
          (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))

(define (range start stop step)
  (if (>= start stop) '()
      (cons start (range (+ start step) stop step))))

(define (enumerate-interval start end)
  (range start (+ end 1) 1))
