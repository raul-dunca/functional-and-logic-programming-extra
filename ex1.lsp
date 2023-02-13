;gnu clisp  2.49.60

( defun CountOcc(l e)
      (cond
       ((null l) 0)
       ((equal (car l) e) (+ 1 (CountOcc (cdr l) e)))
       (T (CountOcc (cdr l) e))
      )
)

(print (CountOcc '(1 a b a 2 3 1 8 9) 1))



( defun RemoveAllOcc(l e)
      (cond
       ((null l) nil)
       ((equal (car l) e) (RemoveAllOcc (cdr l) e))
       (T (cons (car l) (RemoveAllOcc (cdr l) e)))
      )
)


(print (RemoveAllOcc '(1 a b a 2 3 1 8 9) '1))

( defun main (l)
  (cond
       ((null l) nil)
       (T (cons (list (car l) (CountOcc l (car l)) )  (main (RemoveAllOcc l (car l)))))
       )
    
)

(print (main '(a b a b c 1 2 1 1)))
