;;
;;
;;f(a) < 0 < f(b) f在a、b之间必然存在0点 求此0点 即f(x) = 0 求x
;;
;;折半查找法：
;;  令x是a、b的均值，既x = (a + b)/2 
;;  比较f(x)：
;;  如果 f(x) < 0 则继续在x、b之间查找
;;  如果 f(x) > 0 则继续在a、x之间查找
;;  否则 返回x
;;  注意：这里必须保证test-value不能同时为正或者负数


(define (search f neg-point pos-point)
  (let ((mid-point (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        mid-point
        (let ((test-value (f mid-point)));;注意：这里必须保证test-value不能同时为正或者负数
          (cond ((positive? test-value)
                 (search f neg-point mid-point))
                ((negative? test-value)
                 (search f mid-point pos-point))
                (else mid-point))))))
(define (close-enough? x y)
  (< (abs (- x y)) 0.001))

(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value))
           (search f a b))
          ((and (negative? b-value) (positive? a-value))
           (search f b a))
          (else (error "Value are not of opposite sign" a b)))))


