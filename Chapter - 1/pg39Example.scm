(define (fib n)
  (define (iter sum count)
    (if (= count  0) 
      	sum
	(iter (+ sum count) (- count 1))))

  (iter 0 n))
    
