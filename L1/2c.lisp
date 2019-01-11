;c) Write a function to sort a linear list without keeping the double values.

(DEFUN min2(A B)
  (COND
    ((<= A B) A)
    (T B)
    )
  )

(DEFUN minL(L)
  (COND
    ((NULL L) 0)
    ((= (LIST-LENGTH L) 1) L)
    (T (minL (CONS (min2 (CAR L) (CAR (CDR L))) (CDR (CDR L)))))
    )
  )

(DEFUN deleteE (L E)
  (COND
    ((NULL L) NIL)
    ((= (CAR L) E) (deleteE (CDR L) E))
    (T (CONS (CAR L) (deleteE (CDR L) E)))
    )
  )

(DEFUN sortL(L)
  (COND
    ((NULL L) NIL)
    ;((= (LIST-LENGTH L) 1) L)
    (T (CONS (CAR (minL L)) (sortL (deleteE L (CAR (minL L))))))
    )
  )

;(min2 '3 2)
;(minL '(3 4 2 1))
;(deleteE '(3 2 5 2 1 2) 2)
(sortL '(3 2 5 2 1 2))