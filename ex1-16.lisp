(define (it-expt a b n b0)
  (cond ((= n 0) a)
	  ((= (remainder n 2) 0) (it-expt b (* b b) (/ n 2)))
	  (else (* b0 (it-expt b (* b b) (/ (- n 1) 2))))
  )
)