#lang racket

;; Lets implement java-esque features in Racket!

;; First, the "for" loop

;; for : Number [Number Number -> Boolean] [Number -> Number] [Number X -> Y]  X  Y-> Y 
(define (for count stop-case iterate func input output)
  (if (stop-case count)
      (func count input)
      (for (iterate count) stop-case iterate func input (func count input))))
      