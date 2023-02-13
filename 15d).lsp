;gnu clisp  2.49.60


( defun is_in (l e)
    (COND
     ((null l)nil)
     ((equal e (car l)) T)
     (T (is_in (cdr l) e))
    )
    
 )
(print (is_in '(1 2 3 6 2) 12)) 

( defun removes (l e)
    (COND
     ((null l) nil)
     ((equal e (car l)) (removes (cdr l) e))
     (T (cons (car l) (removes (cdr l) e)))
    )
    
 )

(print (removes '(1 2 3 6 2) 12)) 




( defun eqaulSets (a b)
    (COND
     ((and (null a) (null b)) T)
     ((null b) nil)
     ((is_in b (car a)) (eqaulSets (removes a (car a)) (removes b (car a))))
     (T nil)
    )
    
 )
    
(print (eqaulSets '(1 2 3 6 5) '(1 2 6 3))) 

