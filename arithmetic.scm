(define (mod x y) (let ((m (modulo x y))) (if (= m 0) y m)))

(define (addition m)
	(define (add x y)
		(if (or (= x 0) (= y 0) (not (integer? x)) (not (integer? y))) 
			(error "Invalid output")
			(mod (+ x y) m)))
	(if (<= m 0) 
		(error "Negative numbers and 0 are invalid modulo value")
		(lambda (x y . numbers) (fold-right add (add x y) numbers))))

