;Simpson's Rule is a more accurate method of numerical integration than the method illustrated above. Using Simpson's Rule, the integral of a function f between a and b is approximated as h(y0 + 4y1 + 2y2 + 4y3 + 2y4 + ... + 2yn-2 + 4yn-1 + yn) / 3 where h = (b - a)/n, for some even integer n, and yk = f(a + kh).

(define (cube x)
	(* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpsons f a b n)	
	(define h
		(/ (- b a) n))

	(define (inc x) 
		(+ x 1))

	(define (y k)
		(f (+ a (* k h))))
	
	(define (term k)
		(* (cond 
           	 ((or (= k 0) (= k n)) 1)
		 ((odd? k) 4)
           	 ((even? k) 2))
     		 (y k)))

	(/ (* h (sum term 0 inc n)) 3)
)


