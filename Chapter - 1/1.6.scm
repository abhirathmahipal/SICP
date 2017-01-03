(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

; Alyssa types in the following
;(define (sqrt-iter guess x)
;  (new-if (good-enough? guess x)
;	  guess
;	  (sqrt-iter (improve guess x)
;		     x)))

; https://stackoverflow.com/questions/1171252/whats-the-explanation-for-exercise-1-6-in-sicp

; Got the solution from the above link
; Since new-if isn't a special form it evaluates all the arguments thus ending up in resurion. If is a special form that only executes the required part of the else clause
