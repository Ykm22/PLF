;todo
(defun my_contains (l x)
    (cond
        ((and (atom l) (equal l x)) T)
        (T (mapcar #'(lambda (y) (my_contains y x)) l))
    )
)