#lang racket

(define (fib-rec n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib-rec (- n 1)) (fib-rec (- n 2))))))

(define (fib-iter n)
  (define (iter a b counter)
    (if (= n counter)
        b
        (iter b (+ a b) (+ counter 1))))
  (iter 1 0 0)
)

(fib-rec 0)
(fib-rec 1)
(fib-rec 2)
(fib-rec 5)
(fib-rec 10)

(fib-iter 0)
(fib-iter 1)
(fib-iter 2)
(fib-iter 5)
(fib-iter 10)