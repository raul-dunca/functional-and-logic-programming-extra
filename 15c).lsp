;gnu clisp  2.49.60


( defun Sublist (l)
    (COND
     ((null l)nil)
     ((listp (car l)) (myappend ( cons (car l) (Sublist (car l)) ) (Sublist (cdr l))))
     (T (Sublist (cdr l)))
    )
    
 )

( defun myappend(l e)
    (COND
     ((and (null l) (listp e) )e)
      ((null l) (list e))
     (T (cons (car l) (myappend(cdr l) e)))
     )
    
 )

 
 (print (Sublist '((1 2 3) ((4 1 5) 6) 2))) 


 (print (myappend '((1 2 3) ((4 1 5) 6) 2) 2)) 
