#lang racket

;;We define the list of characters
(define my_list_1 '(w j m z b m r))

(define my_list_2 '(x i a o d a o))

(define my_list_3 '(s e v e n k p l u s))


;;Function 1
;; We define a function that eliminates duplicates
(define (fun-elim-dup my_list final_list)
  (cond
    ;;caso base
    ;;llegamos al caso base
    ;;1. cuando la lista esta vacia
    [(empty? my_list) final_list]
    ;;2. cuando a la lista le queda un caracter
     [(member (first my_list) final_list)
     (fun-elim-dup (rest my_list) final_list)]
    [else
     (fun-elim-dup (rest my_list) (cons (first my_list) final_list))]))
;; We get the length of the list
(define (length-list my_list contador)
  (cond
    [(empty? my_list) contador]
    [else (length-list (rest my_list) (+ contador 1))]))

;;Lambda
;;We use lambda to define if it is a Girl or a Boy
(define boy-or-girl
  (lambda (s)
    (if (even? (length-list (fun-elim-dup s '()) 0))
        "CHAT WITH HER!"
        "IGNORE HIM!")))

(boy-or-girl my_list_1)
(boy-or-girl my_list_2)
(boy-or-girl my_list_3)