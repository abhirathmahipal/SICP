; 100 means 100 cents. Available demoniations are 
; 1 cent, 5 cents, 10 cents, 25 cents and 50 cents


(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
  	((or (< amount 0) (= kinds-of-coins 0)) 0)
	(else (+ (cc amount
		     (- kinds-of-coins 1))
		 (cc (- amount 
			(first-denomination kinds-of-coins))
		     kinds-of-coins)))))


;; any order of reduction would make sense logically not neccessarily largest to smallest
(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
	((= kinds-of-coins 2) 5)
	((= kinds-of-coins 3) 10)
	((= kinds-of-coins 4) 25)
	((= kinds-of-coins 5) 50)))

;; It has optimal substructure
;; 100 - 1, 5, 10, 25, 50 
;;            /                      
;;   95 - 1, 5, 10, 25, 50             100 - 1, 10, 25, 50