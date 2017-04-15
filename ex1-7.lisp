(define (mysqrt x) (sqrt-iter 1.0 x))
(define (newsqrt x) (new2-sqrt-iter 0.1 1.0 x))

(define (sqrt-iter guess x)
	(if (good-enough guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (abs x) (if (< x 0) (- x) x))

(define (new-sqrt-iter guess x)
	(new-if (good-enough guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(define (new2-sqrt-iter guess old-guess x)
	(if (new-good-enough guess old-guess)
		guess
		(new2-sqrt-iter (improve guess x) guess x)))

(define (new-good-enough new-guess guess)
	(< (/ (abs (- guess new-guess)) guess) 0.001))
