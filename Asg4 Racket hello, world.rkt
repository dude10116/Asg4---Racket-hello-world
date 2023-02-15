;Asg4 - Racket hello, world!;
;By Davis graham;
#lang racket


;#1 Prints "Hello, (name)!" w/ a given name.
;First a function, is created as a format for what will be printed.
(define (sayHello toName)
  (printf "Hello, ~a!" toName))

;User defined name is input for the function
(sayHello "Davis")
(printf "~n")


;#2 maxValue list checker
(define (maxValList lis)
  (if (empty? lis) ; Error checker.
      "ERROR (maxVal checker): The list is empty, put in some values!"
      (let loop ((lis (cdr lis))   ; Loops through the list.
                 (maxVal (car lis)))  ; Assigns a max Value.
        (cond ((null? lis) maxVal)    ; If maxValList is empty, it returns the maxVal.
              ((> (car lis) maxVal)   ; Checks if current element is greater than max
               (loop (cdr lis) (car lis))) ; when it has found new max
              (else                      ; If new maxVal not found...
               (loop (cdr lis) maxVal))))))   ; ...maxVal will remain the same.

;DEBUG: Checks if error statement is working.
;(maxValList '())

;List that maxVal checker will use.
(maxValList '(123 2))


;#3 Nested maxValue list checker
(define (nestedMaxValList array)
      (cond ((pair? array) (max (nestedMaxValList (car array)) (nestedMaxValList (cdr array)))) ; Makes sure that the array is in pair form, will go through both the nested and unested part of array.
        ((number? array) array) ; Checks if there are any numbers in any part of the array.
        (else 0))) ; Error checker. Returns zero if array is empty.

;DEBUG: Checks if error statement is working.
;(nestedMaxValList '( ()))

;List that nestedMaxVal checker will use.
(nestedMaxValList '((3 4 80) (1 2) (7)))


;#4 Less than fucntion
(define (lessThanFunction a b)
  (< (length a) (length b))) ; Compares each list to each other until it returns a ordered pair from least to greatest length of the lists.

;Array that the less than fucntion will use
(sort '((3 4 1) (1 2) (7)) lessThanFunction)