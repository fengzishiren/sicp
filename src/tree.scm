(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))
;
(define (left-branch structure)
  (car structure))
(define (right-branch structure)
  (car (cdr structure)))

(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (car (cdr branch)))

(define (branch-weight branch)
  (if (not (pair? branch))
      branch
      (+ (branch-length branch)
         (total-weight (branch-structrue branch)))))

(define (total-weight x)
  (cond ((null? x) 0)
        ((not (pair? x)) x)
        (else (+ (branch-weight (left-branch x))
                 (branch-weight (right-branch x))))))
