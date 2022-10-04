(define (accumulate op initial sequence)
	(if (null? sequence)
		initial
		(op (accumulate op initial (cdr sequence)) (car sequence))))

(define (valid? x) (and (integer? x) (> x 0)))

(define (check-args? x y mod) 
	(and (valid? x) (valid? y) (valid? mod) (>= mod x) (>= mod y)))

(define invalid-args "Invalid arguments")
(define invalid-mod "Invalid modulo")

(define (addition mod)
	(define (add x y) 
		(if (check-args? x y mod) 
			(let ((sum (+ x y))) (if (> sum mod) (- sum mod) sum))
			(error invalid-args)))
	(if (valid? mod) 
		(lambda (x y . numbers) (accumulate add (add x y) numbers))
		(error Invalid-mod)))

(define (subtraction mod)
	(define (sub x y)
		(if (check-args? x y mod) 
			(let ((dif (- x y))) (if (<= dif 0) (+ dif mod) dif))
			(error invalid-args)))
	(if (valid? mod)
		(lambda (x y . numbers) (accumulate sub (sub x y) numbers))
		(error Invalid-mod)))

(define (multiplication mod)
	(define (mul x y)
		(define (mul x y)
			(if (= y 0) mod ((addition mod) x (mul x (- y 1)))))
		(cond
			((not (check-args? x y mod)) (error invalid-args))
			((and (= x mod) (= y mod)) (+ 1 (random mod)))
			(else (mul x y))))
	(if (valid? mod) 
		(lambda (x y . numbers) (accumulate mul (mul x y) numbers))
		(error Invalid-mod)))

(define (division mod)
	(define (div x y)
		(define (div x y)
			(if (> y x) 
				mod
				((addition mod) 1 (div (- x y) y))))
		(cond 
			((not (check-args? x y mod)) (error invalid-args))
			((= y mod) (+ 1 (random mod)))
			(else (div x y))))
	(if (valid? mod)
		(lambda (x y . numbers) (accumulate div (div x y) numbers))
		(error Invalid-mod)))
