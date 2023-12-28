(define (square a)
  (* a a))
(define (sum-of-squares a b)
  (+ 
    (square a) 
    (square b)))
(define (sum-of-larger-sq a b c)
  (cond ((and 
	  (< a b)
	  (< a c))
	 (sum-of-squares b c))
	((and
	  (< b c)
	  (< b a))
	 (sum-of-squares c a))
	((and
	  (< c a)
	  (< c b)) 
	 (sum-of-squares a b))))

