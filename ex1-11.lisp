(define (f-rec n)
  (if (< n 3)
     n
     (+ f-rec(- n 1) (* 2 f-rec(- n 2)) (* 3 f-rec(- n 3)))
  )
)


(define (f-iter n)
  (f-xiter 0 1 2 n))

(define (f-xiter a b c n)
  (if (< n 3)
       c
       (f-xiter b c (+ c (* 2 b) (* 3 a)) (- n 1))
  )
)

