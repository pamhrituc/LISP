;d) Write a function to transform a linear list into a set.
;deleteElement(l1, l2, ..., ln, E) = [], L = []
;									deleteElement(l2, ..., ln, E), l1 = E
;									{l1} U deleteElement(l2, ..., ln, E), l1 != E

(DEFUN deleteElem(L E)
  (COND
    ((NULL L) NIL)
    ((= (CAR L) E) (deleteElem (CDR L) E))
    ((NOT (= (CAR L) E)) (CONS (CAR L) (deleteElem (CDR L) E)))
    )
  )

(DEFUN listToSet(L)
  (COND
    ((NULL L) NIL)
    (T (CONS (CAR L) (listToSet (deleteElem L (CAR L)))))
    )
  )

(listToSet '(1 2 3 1 2))