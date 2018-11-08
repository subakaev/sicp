#lang racket

; Метод Ньютона для кубических корней основан на том, что если y является приближением к
; кубическому корню из x, то мы можем получить лучшее приближение по формуле
; (x/y^2 + 2y) / 3
; С помощью этой формулы напишите процедуру вычисления кубического корня, подобную проце-
; дуре для квадратного корня. (В разделе 1.3.4 мы увидим, что можно реализовать общий метод
; Ньютона как абстракцию этих процедур для квадратного и кубического корня.)

(define calc-precision 0.000001)

(define (abs x) (if (< x 0) (- x) x))

(define (square x) (* x x))

(define (cube-root x)
  (define (improve guess) (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (good-enough guess next) (< (abs (- guess next)) calc-precision))
  (define (iter guess) 
    (define next-guess (improve guess))
    (if (good-enough guess next-guess) 
        guess 
        (iter next-guess)))

  (iter 1.0)
)

(cube-root 1)
(cube-root 8)
(cube-root 27)