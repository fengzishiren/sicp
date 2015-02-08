;;; car cdr cons
;;; car  Contents of Address part of Register (寄存器的地址部分的内容)
;;; cdr  Contents of Decrement part of Register （寄存器的减量部分的内容)
;;; cons Consturct

(define (cons x y)
  (lambda (m) (m x y))); m接受一个函数 该函数必须有两个参数 返回该函数的执行结果

;;只要这个弯转过来 下一个cdr就变得异常简单
(define (car x)
  (x (lambda (a b) a))) 

(define (cdr x)
  (x (lambda (a b) b)))

(define (iter result a b)
 (if (= b 0)
     result
     (iter (* result a) a (- b 1))))
(define (power a b)
  (iter 1 a b))

(define (cons1 x y)
  (* (power 2 x) (power 3 y)))

(define (car1 x)
  (define (iter result v)
    (if (= 1 (remainder v 2))
        result
        (iter (+ result 1) (/ v 2))))
  (iter 0 x))

(define (cdr1 x)
  (define (iter result v)
    (if (= 1 (remainder v 3))
        result
        (iter (+ result 1) (/ v 3))))
  (iter 0 x))


(define (cdr3 z)
  (if (= 0 (remainder z 3))
      (+ 1 (cdr3 (/ z 3)))
      0))



(define zero 
  (lambda (x) (lambda (y) y)))

(define one
  (lambda (x) (lambda (y) (x y))))

(define two
  (lambda (x) (lambda (y) (x (x y)))))


