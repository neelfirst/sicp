(define (cubert x) (cubert-iter 1.0 x))

(define (cubert-iter guess x)
	(if (good-enough guess x)
		guess
		(cubert-iter (cubert-improve guess x) x)))

(define (cubert-improve guess x)
	(/ (+ (/ x (square guess)) (+ guess guess)) 3))

(define (good-enough guess x)
	(< (abs (- (cube guess) x)) 0.001))

(define (cube x) (* (square x) x))
(define (square x) (* x x))

(define (abs x) (if (< x 0) (- x) x))

cubert 8.0
cubert 27.0
cubert 1000.0
cubert -8.0
cubert -27.0
cubert -1000.0
