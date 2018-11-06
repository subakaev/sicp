#lang racket

; Определите процедуру, которая принимает в качестве аргументов 
; три числа и возвращает сумму квадратов двух бо́льших из них.

(define (square x) (* x x))

(define (square-sum x y) (+ (square x) (square y)))

(define (square-sum-max x y z)
  (cond ((and (< x y) (< x z)) (square-sum y z))
        ((and (< y x) (< y z)) (square-sum x z))
        (else (square-sum x y))))

(square-sum-max 1 3 5)
(square-sum-max 3 1 5)
(square-sum-max 5 3 1)