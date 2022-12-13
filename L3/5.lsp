(defun apartine(l x)
    (cond
        ((and (atom l)(equal l x)) T)
        ((and (atom l)(not (equal l x))) nil)
        (T (mapcar #'(lambda(y) (apartine y x)) l))
    )
)

(defun my_or(l state)
    (cond
        ((equal l nil) state)
        ((equal (car l) T) (my_or (cdr l) T))
        (T (my_or (cdr l) state))
    )
)