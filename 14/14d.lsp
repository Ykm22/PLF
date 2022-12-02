;l - list, e - int
;get maximum nr of a linear list
;by comparing each number with e
;and updating it accordingly
(defun max_aux (l e)
    (cond 
        ((null l) e)
        ((and (numberp (car l)) (<= (car l) e)) (max_aux (cdr l) e))
        ((and (numberp (car l)) (> (car l) e)) (max_aux (cdr l) (car l)))
        (T (max_aux (cdr l) e))
    )
)
;l - list
;calling auxiliary function with 2nd argument as first number appearing in list
(defun my_max (l)
    (max_aux (cdr l) (car l))
)
;l - list, e - int
;deleting each appearance of e in l
(defun delete_aux(l e)
    (cond
        ((null l) nil)
        ((and (numberp (car l)) (= (car l) e)) (delete_aux (cdr l) e))
        (T (cons (car l) (delete_aux (cdr l) e)))
    )   
)
;l - list
;calling auxiliary function with 2nd argument as result of my_max(l) function 
(defun delete_main(l)
    (delete_aux l (my_max l))
)