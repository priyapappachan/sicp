(define (make-interval a b)
	(cons a b))

(define (sub-interval x y)
	(make-interval (- (lower-bound x) (upper-bound y))
        	(- (upper-bound x) (lower-bound y))))
