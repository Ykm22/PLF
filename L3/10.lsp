(defun vertexes_at_depth (l current_depth depth)
    (cond
        ((and (atom l) (= current_depth depth)) 1)
        ((atom l) 0)
        (t (apply '+ (mapcar #'(lambda(x) (vertexes_at_depth x (+ 1 current_depth) depth)) l)))
    )
)

(defun main_vertexes_at_depth (l depth)
    (vertexes_at_depth l -1 depth)
)