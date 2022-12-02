(defun elim_aux(l k n)
    (cond
        ((null l) nil)
        ((= k 1) (elim_aux (cdr l) n n))
        (T (cons (car l) (elim_aux (cdr l) (- k 1) n)))
    )

)