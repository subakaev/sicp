#lang racket

; сколькими способами можно разменять сумму в 1 доллар, если имеются монеты по 50, 25, 10, 5 и 1 цент?

; Число способов разменять сумму a с помощью n типов монет равняется
; - числу способов разменять сумму a с помощью всех типов монет, кроме первого, плюс
; - число способов разменять сумму a − d с использованием всех n типов монет, где d — достоинство монет первого типа.

(define (count-change a)
  (define (get-nominal kind)
    (cond ((= kind 1) 1)
          ((= kind 2) 5)
          ((= kind 3) 10)
          ((= kind 4) 25)
          ((= kind 5) 50)))
  (define (cc amount kinds)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= kinds 0)) 0)
          (else (+ (cc amount (- kinds 1)) (cc (- amount (get-nominal kinds)) kinds)))))
  (cc a 5))

(count-change 100)