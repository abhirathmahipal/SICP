(define (sqrt-iter x guess)
  (if (good-enough? x guess)
      guess
      (sqrt-iter x (improve guess x))))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

; Old good enough function
;(define (good-enough? x guess)
;  (< (abs (- (* guess guess) x)) 0.001))

; Doing better than the old good enough function
(define (good-enough? x guess)
  (< (abs (- (improve guess x) guess)) (* guess 0.00001)))


(define (sqrt x)
  (sqrt-iter x 1.0))

