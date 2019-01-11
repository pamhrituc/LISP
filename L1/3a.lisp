;a) Write a function that inserts in a linear list a given atom A after the 2nd, 4th, 6th, ... element.
(DEFUN insert(L E)
  (COND
    ((NULL L) NIL)
    ((= (LIST-LENGTH L) 1) L)
    (T (append (CONS (CAR L) (CONS (CAR(CDR L)) (LIST E))) (insert (CDR (CDR L)) E)))
    )
  )

(insert '(1 2 3 4 5) 6)