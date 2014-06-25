;a^b - iterative solution

(define (square x)
   (* x x))

(define (even n)
   (= (remainder n 2) 0))

(define (expt-iter b n a)
	(cond ((= n 0) a)
		((even n) (expt-iter(square b) (/ n 2) a))
         (else (expt-iter  b (- n 1) (* a b)))))

(define (expt b n)
	(expt-iter b n 1)
)
