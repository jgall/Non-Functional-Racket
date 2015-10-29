;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname dannyFor) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; for(int i = 0; i < 10; i++)
;; for : currentcase op endcase iteration
(define (for1 cpiece ccase op checkop ecase iter iterop)
  (if (checkop ecase (iterop ccase iter))
      cpiece
      (for1 (op cpiece) (iterop ccase iter) op checkop ecase iter iterop)))
(define (add3 x)
  (+ x 3))

(for1 6 0 add1 < 5 1 +)
(for1 6 0 add3 < 5 1 +)
