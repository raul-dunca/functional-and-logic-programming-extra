( defun AddElem(l e n)
    (Cond
     ((null l ) nil)
     ((= n 1) (cons e (AddElem(cdr l) e (- n 1))))
     (T (cons (car l) (AddElem(cdr l) e (- n 1))))
     
     )
    )
    
 ( print(AddElem '(1 9 3 5) 212 4))

