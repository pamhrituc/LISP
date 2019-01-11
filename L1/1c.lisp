;c) Write a function to determine the list of all sublists of a given list, on any level.
;A sublist is either the list itself, or any element that is a list, at any level. Example:
;(1 2 (3 (4 5) (6 7)) 8 (9 10)) => 5 sublists :
;( (1 2 (3 (4 5) (6 7)) 8 (9 10)) (3 (4 5) (6 7)) (4 5) (6 7) (9 10) )

(DEFUN listOfSublists(L)
  (COND
    ((NULL L) NIL)
    ((LISTP (CAR L)) (CONS (CAR L) (CONS (listOfSublists(CAR L)) (listOfSublists (CDR L)))))
    (T (listOfSublists (CDR L)))
    )
  )

(DEFUN ha(L)
  (COND
    (T (CONS L (listOfSublists l)))
      )
    )
(ha '(1 2 (3 (4 5) (6 7)) 8 (9 10)))