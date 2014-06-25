;Value of pi

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (pi n)
   (define (inc x) 
	(+ x 1))
   (define (term x)
      (/ (* 4.0 (square x)) (- (* 4.0 (square x)) 1)))
   (* 2.0 (product term 1 inc n)))
