;Prove that Fib(n) is the closest integer to phi^n/sqrt(5), where  = (1 + sqrt(5))/2

(define phi
   (/ (+ 1 (sqrt 5)) 2))

(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

(define (f n)
   (/ (expt phi n) (sqrt 5)))
