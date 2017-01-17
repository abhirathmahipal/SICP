(define (recursive-f n)
  (cond ((< n 3) n)
	(else (+ (recursive-f (- n 1)) (* 2 (recursive-f (- n 2))) (* 3 (recursive-f (- n 3)))))))


; iterative f yet to be done
