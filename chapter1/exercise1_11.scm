
(define (rec_f n)
  (if (< n 3)
    n
    (+ 
      (rec_f (- n 1)) 
      (* 2 (rec_f (- n 2))) 
      (* 3 (rec_f (- n 3)))
      )
    )
  )

;Go through the formula f(n) = f(n-1) + 2 * f(n-2) + 3 * f(n-3) where you move the numbers up from the back.
;It will always "end" with f(n) = f(2) + 2 f(1) + 3 f(3) so that is where we start and count up adding 
;each level up one place and changing the first level by running the formula on it.
(define (f n)
  (define (iter_f first second third count)
    (if (= count 0)
      third
      (iter_f (+ first (* second 2) (* third 3)) first second  (- count 1))
    )
  )
  
  (iter_f 2 1 0 n)
)
