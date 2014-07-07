; 求和记法 a -> b的求值
; 测试：1~100求和 (sum self 1 inc 100)
(define (sum term a next b) ;;term为对当前值的求值过程 next为下一个值的求值过程
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

;calc pi how to?
(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2)))); 1/(x*(x+2))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))
;;
;; 求出函数f在范围a和b之间的定积分的近似值，公式如下：
;; [f(a + dx/2) + f(a + dx + dx/2) + f(a + 2dx + dx/2) + ...]dx
;; 用sum形式化概念
;;
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))


