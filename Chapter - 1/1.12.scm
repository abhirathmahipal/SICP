;; uses recursion. Quite slow
(define (row-entry row col)
(cond ((or (= col 0) (= row 0)) 1)
      ((= row col) 1)
      (else (+ (row-entry (- row 1) (- col 1))
                (row-entry (- row 1) col)))))


;; Trying to draw the triangle.
;; I can use map or some iter function to loop
;; not familiar so skipping for now
;; (define (draw-triangle rows cols)
;; )