(define (mod x y) (let ((m (modulo x y))) (if (= m 0) y m)))

(define (check? x) (and (integer? x) (> x 0)))

(define (addition m)
	(define (add x y)
		(if (and (check? x) (check? y) (<= x m) (<= y m))
			(mod (+ x y) m) 
			(error "Invalid arguments")))
	(if (check? m) 
		(lambda (x y . numbers) (fold-right add (add x y) numbers))
		(error "Negative numbers and 0 are invalid modulo value")))

