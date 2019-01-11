;d) Write a function to return the intersection of two sets.

(DEFUN findE(L E)
  (COND
    ((NULL L) -1)
    ((= (CAR L) E) 0)
    (T (findE (CDR L) E))
    )
  )

(DEFUN intersect(K L)
  (COND
    ((NULL K) NIL)
    ((NULL L) NIL)
    ((= (findE L (CAR K)) 0) (CONS (CAR K) (intersect (CDR K) L)))
    (T (intersect (CDR K) L))
    )
  )

(DEFUN deleteE (L E)
  (COND
    ((NULL L) NIL)
    ((= (CAR L) E) (deleteE (CDR L) E))
    (T (CONS (CAR L) (deleteE (CDR L) E)))
    )
  )

(DEFUN listToSet(L)
  (COND
    ((NULL L) NIL)
    ((= (LIST-LENGTH L) 1) L)
    (T (CONS (CAR L) (listToSet(deleteE L (CAR L)))))
    )
  )

(DEFUN main(K L)
  (listToSet(intersect K L))
  )

;(findE '(3 2 5) 2)
;(findE '(3 2 4) 5)
;(intersect '(3 2 4 3) '(4 3 1))
;(listToSet '(3 4 3 4))
(main '(3 2 4 3) '(4 3 1))