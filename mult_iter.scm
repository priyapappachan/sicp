;multiplication by adding, doubling, halving

(define (even n)
   (= (remainder n 2) 0))

(define (double x)
   (+ x x))

(define (half x)
   (/ x 2))

(define (mult a b p)
   (cond ((= 0 b) p)
         ((even b) (mult (double a) (half b) p))
         (else (mult a (- b 1) (+ a p)))))

(define (multiplication a b)
   (mult a b 0))
