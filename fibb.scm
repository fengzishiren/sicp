(define (fibb x)
  (if (< x 3)
      x
      (+ (fibb (- x 1)) (fibb (- x 2)) (fibb (- x 3)))))

(define (fibb-iter c b a n)
  (if (= n 0)
      a
      (fibb-iter (+ c b a) c b (- n 1))))

