;b) Write a function to get from a given list the list of all atoms, on any level, but reverse order. Example:
;(((A B) C) (D E)) ==> (E D C B A)

(DEFUN linearize(L)
  (COND
    ((NULL L) NIL)
    ((ATOM (CAR L)) (CONS (CAR L) (linearize (CDR L))))
    (T (append (linearize (CAR L)) (linearize (CDR L))))
    )
  )

(DEFUN reverseL(L)
  (COND
    ((NULL L) NIL)
    ((NUMBERP L) L)
    (T (append (reverseL (CDR L)) (list (CAR L))))
    )
  )

(DEFUN main(L)
  (reverseL (linearize L))
  )

(main '(((A B) C) (D E)))