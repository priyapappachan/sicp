;nth repeated application of square function

(define (square x)
	(* x x))

(define (compose f g)
	(lambda (x) (f (g x))))

(define (repeated g n)
	(if (= n 1)
		g
		(compose g (repeated g (- n 1)))))
