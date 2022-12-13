(defun my_reverse(l col)
    (cond
        ((equal l nil) col)
        ((atom l) (append col (list l)))
        (t (mapcar #'(lambda(x) (my_reverse x col)) l) )
    )
)