#lang racket

;;We define the list of characters
(define my_list_1  '(a b c d))                   ; 4 únicos: a b c d
(define my_list_2  '(r a c k e t))               ; 6 únicos: r a c k e t
(define my_list_3  '(h e l l o))                 ; 4 únicos: h e l o
(define my_list_4  '(m o n k e y))               ; 6 únicos: m o n k e y
(define my_list_5  '(s e v e n k p l u s))       ; 8 únicos: s e v n k p l u
(define my_list_6  '(a a b b c c d d))           ; 4 únicos: a b c d
(define my_list_7  '(p y t h o n))               ; 6 únicos: p y t h o n
(define my_list_8  '(r u b y))                   ; 4 únicos: r u b y
(define my_list_9  '(e r l a n g))               ; 6 únicos: e r l a n g
(define my_list_10 '(h a s k e l l))             ; 6 únicos: h a s k e l
(define my_list_11 '(k o t l i n))               ; 6 únicos: k o t l i n
(define my_list_12 '(a b c d e f g h))           ; 8 únicos: a b c d e f g h
(define my_list_13 '(a a b b c c d d e e f f))   ; 6 únicos: a b c d e f

;; Ignore him solution
(define my_list_14 '(s w i f t))                 ; 5 únicos: s w i f t
(define my_list_15 '(x i a o d a o))             ; 5 únicos: x i a o d
(define my_list_16 '(a b c))                     ; 3 únicos: a b c
(define my_list_17 '(p r o l o g))               ; 5 únicos: p r o l g
(define my_list_18 '(z z z z z))                 ; 1 único:  z
(define my_list_19 '(a a b b c))                 ; 3 únicos: a b c
(define my_list_20 '(s c h e m e))               ; 5 únicos: s c h e m
(define my_list_21 '(c l o j u r e))             ; 7 únicos: c l o j u r e
(define my_list_22 '(a b c d e))                 ; 5 únicos: a b c d e
(define my_list_23 '(a a b b c c d d e))         ; 5 únicos: a b c d e
(define my_list_24 '(j a v a s c r i p t))       ; 9 únicos: j a v s c r i p t
(define my_list_25 '(g o l a n g))               ; 5 únicos: g o l a n




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
(boy-or-girl my_list_4)
(boy-or-girl my_list_5)
(boy-or-girl my_list_6)
(boy-or-girl my_list_7)
(boy-or-girl my_list_8)
(boy-or-girl my_list_9)
(boy-or-girl my_list_10)
(boy-or-girl my_list_11)
(boy-or-girl my_list_12)
(boy-or-girl my_list_13)
(boy-or-girl my_list_14)
(boy-or-girl my_list_15)
(boy-or-girl my_list_16)
(boy-or-girl my_list_17)
(boy-or-girl my_list_18)
(boy-or-girl my_list_19)
(boy-or-girl my_list_20)
(boy-or-girl my_list_21)
(boy-or-girl my_list_22)
(boy-or-girl my_list_23)
(boy-or-girl my_list_24)
(boy-or-girl my_list_25)