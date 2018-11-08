#lang racket

(define calc-precision 0.000001)

(define (abs x) ((if (< x 0) - +) 0 x))

(define (sqrt x)
  (define (good-enough guess) (< (abs (- (* guess guess) x)) calc-precision))
  (define (improve guess) (/ (+ guess (/ x guess)) 2))
  (define (sqrt-iter guess) 
    (if (good-enough guess) 
        guess 
        (sqrt-iter (improve guess))))

  (sqrt-iter 1.0)
)

(sqrt 200000)
