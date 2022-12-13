(defun plus_pare_minus_impare(l)
    (cond
        ((and (numberp l) (= (mod l 2) 0)) l)
        ((numberp l) (* l -1))
        (T (apply #'+ (mapcar #'plus_pare_minus_impare l)))
    )
)