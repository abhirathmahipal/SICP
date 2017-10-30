(define (recursive-f n)
  (cond ((< n 3) n)
	(else (+ (recursive-f (- n 1)) (* 2 (recursive-f (- n 2))) (* 3 (recursive-f (- n 3)))))))


; corner cases yet to be handled like going below zero
; Bill the Lizard for help
(define (iterative-f n)
  (define (f-iter a b c n)
    (if (< n 3)
       c ;; because c f(n-3) will be equal to f(n) = n
      (f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1))))
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))