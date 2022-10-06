(define (accumulate op initial sequence)
	(if (null? sequence)
		initial
		(op (accumulate op initial (cdr sequence)) (car sequence))))

(define (mod x y) (let ((m (modulo x y))) (if (= m 0) y m)))

(define (addition m)
	(define (add x y)
		(if (or (= x 0) (= y 0)) 
			(error "0 is invalid")
			(/ (mod (+ (* (numerator x) (denominator y)) (* (numerator y) (denominator x))) m)
				(mod (* (denominator x) (denominator y)) m))))
	(lambda (x y . numbers) (accumulate add (add x y) numbers)))

(define (multiplication m)
	(define (mul x y)
		(if (or (= x 0) (= y 0)) 
			(error "0 is invalid")
			(/ (mod (* (numerator x) (numerator y)) m)
				(mod (* (denominator x) (denominator y)) m))))
	(lambda (x y . numbers) (accumulate mul (mul x y) numbers)))
