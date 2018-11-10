#lang racket

; Функция f определяется правилом: f (n) = n, если n < 3, и f (n) = f (n − 1) + f (n − 2) + f (n − 3),
; если n ≥ 3. Напишите процедуру, вычисляющую f с помощью рекурсивного процесса. Напишите
; процедуру, вычисляющую f с помощью итеративного процесса.

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1)) (f-rec (- n 2)) (f-rec (- n 3)))))

(define (f-iter n)
  (define (iter a b c counter)
    (if (= counter 0)
        c
        (iter (+ a b c) a b (- counter 1))))
  (iter 2 1 0 n))

(f-rec 0)
(f-rec 1)
(f-rec 2)
(f-rec 3)
(f-rec 10)
(f-rec 15)

(f-iter 0)
(f-iter 1)
(f-iter 2)
(f-iter 3)
(f-iter 10)
(f-iter 15)