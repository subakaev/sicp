#lang racket

; Проверка good-enough?, которую мы использовали для вычисления квадратных корней, будет
; довольно неэффективна для поиска квадратных корней от очень маленьких чисел. Кроме того, в
; настоящих компьютерах арифметические операции почти всегда вычисляются с ограниченной точ-
; ностью. Поэтому наш тест оказывается неадекватным и для очень больших чисел. Альтернативный
; подход к реализации good-enough? состоит в том, чтобы следить, как от одной итерации к дру-
; гой изменяется guess, и остановиться, когда изменение оказывается небольшой долей значения
; приближения. Разработайте процедуру вычисления квадратного корня, которая использует такой
; вариант проверки на завершение. Верно ли, что на больших и маленьких числах она работает
; лучше?

(define calc-precision 0.000001)

(define (abs x) ((if (< x 0) - +) 0 x))

(define (sqrt x)
  (define (improve guess) (/ (+ guess (/ x guess)) 2))
  (define (good-enough guess next) (< (abs (- guess next)) calc-precision))
  (define (sqrt-iter guess) 
    (define next-guess (improve guess))
    (if (good-enough guess next-guess) 
        guess 
        (sqrt-iter next-guess)))

  (sqrt-iter 1.0)
)

(sqrt 200000)