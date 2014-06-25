(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (fact n)
	(define (term a)
		a)
	(define (next a)
		(+ a 1)) 
	(product term 1 next n))
