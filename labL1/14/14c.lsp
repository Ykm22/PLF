;l - list of atoms(and of possible other lists)
;get first number from left
(defun getfirstnr (l)
    (cond
        ((numberp (car l)) (car l))
        (T (getfirstnr (car l)))
    )
)

;l - list of atoms, e - int
;get minimum nr of a list of lists
;by comparing each number with e
;and updating it accordingly
(defun min_aux (l e)
    (cond 
        ((null l) e)
        ((listp (car l)) (min_aux (cdr l) (min_aux (car l) e)))
        ((and (numberp (car l)) (>= (car l) e)) (min_aux (cdr l) e))
        ((and (numberp (car l)) (< (car l) e)) (min_aux (cdr l) (car l)))
        (T (min_aux (cdr l) e))
    )
)
;l - list of atoms
;calling auxiliary function with 2nd argument as first number appearing in list
(defun my_min (l)
    (min_aux l (getfirstnr l))
)
;(my_min '((1 (-1 -100 d c f -1000)) (2 3 a) 5 6)) => - 1000