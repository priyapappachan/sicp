; Pascal's Triangle

(define (fact n)
	(if (= n 0)
		1
		(* n (fact (- n 1)))))

(define (dis i c)
	(/ (fact i) (* (fact c) (fact (- i c))))
)

(define (display_number c i)
	(cond ((or (< c i) (= c i))
		(display (dis i c))
		
		(display_number (+ c 1) i))
				
	)
	i
)


(define (display_line i n)
	(cond ((< i n)
		(display_number 0 i)
		(display "\n")
		(display_line (+ i 1) n))
		
	)
	1
)

(define (pascal n)
	(display_line 0 n)
)

	
