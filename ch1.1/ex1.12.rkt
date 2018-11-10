#lang racket

; Напишите процедуру, вычисляющую элементы треугольника Паскаля с помощью рекурсивного процесса.

(define (pascal-triangle col row)
  (if (or (< row 3) (= col 1) (= col row))
      1
      (+ (pascal-triangle (- col 1) (- row 1)) 
         (pascal-triangle col (- row 1)))))

(pascal-triangle 1 1)

(pascal-triangle 1 2)
(pascal-triangle 2 2)

(pascal-triangle 1 3)
(pascal-triangle 2 3)
(pascal-triangle 3 3)

(pascal-triangle 1 4)
(pascal-triangle 2 4)
(pascal-triangle 3 4)
(pascal-triangle 4 4)

(pascal-triangle 1 5)
(pascal-triangle 2 5)
(pascal-triangle 3 5)
(pascal-triangle 4 5)
(pascal-triangle 5 5)