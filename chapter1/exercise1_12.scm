;Pascals triangle

(define (pascal x y)
 (if (or (= x 1) (= x y))
         1
	       (+ (pascal (- x 1) (- y 1)) (pascal (- x 1) y))))
