(load "lang.scm")

(define empty-board '())

(define (adjon-position new-row k rest-of-queens)
  (cons new-row rest-of-queens))

(define (safe? k positions)
  (iter-check (car positions)
      (cdr positions) 1))
(define (iter-check row-of-new-queen rest-of-queens i)
  (if (null? rest-of-queens) #t
      (let ((row-of-current-queen (car rest-of-queens)))
           (if (or (= row-of-new-queen row-of-current-queen)
                   (= row-of-new-queen (+ row-of-current-queen i))
                   (= row-of-new-queen (- row-of-current-queen i)))
             #f
             (iter-check row-of-new-queen (cdr rest-of-queens) (+ i 1))))))

(define (queens board-size)
  (define (queens-cols k)
    (if (= k 0) (list empty-board)
        ;(filter (lambda (positions) (safe? k positions))
        ;(filter (lambda (positions) #t)
                (flatmap (lambda (rest-of-queens)
                           (map (lambda (new-row)
                                  ;(adjoin-position new-row k rest-of-queens))
                                  (cons new-row rest-of-queens))
                                (enumerate-interval 1 board-size)))
                         (queens-cols (- k 1)))));)
  (queens-cols board-size))
