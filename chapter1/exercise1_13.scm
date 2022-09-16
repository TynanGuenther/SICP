;Prove that Fib(n) = (@^n - $^n)/ sqrt(5) where @ = (1+sqrt(5))/2 and $ = (1-sqrt(5))/2

(define (fib n)
  (define (fib_iter a b count)
    (if (= count 0)
      b
      (fib_iter (+ a b) a (- count 1))))
  (fib_iter 1 0 n)
)
(define (equal-fib n)
  (define (a) (/ (+ 1 sqrt(5)) 2))
  (define (b) (/ (- 1  sqrt(5)) 2))
  (define (^ c count)
    (if (= count 0)
      1
      (^ c (- count 1))))
  (if (= n (/ (- (^ a n) (^ b n)) sqrt(5)))
    1
    0))

