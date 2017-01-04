(define (improve x guess)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cbrt-iter x guess)
  (if (good-enough? x guess)
      guess
      (cbrt-iter x (improve x guess))))

(define (good-enough? x guess)
  (< (abs (- (* guess guess guess) x)) 0.001))

(define (cuberoot x)
  (cbrt-iter x 1.0))
