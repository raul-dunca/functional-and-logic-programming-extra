( defun SumAllLvls(l)
    ( cond
    ((null l) 0)
    ((listp (car l)) (+ (SumAllLvls (car l)) (SumAllLvls (cdr l))))
    (T (+ (car l) (SumAllLvls (cdr l))))
        
    )
)