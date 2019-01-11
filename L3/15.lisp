;Write a function that reverses a list together with all its sublists elements, at any level.

(DEFUN reverseL(L)
  (COND
    ((NULL L) NIL)
    ((NUMBERP L) L)
    (T (append (reverseL (CDR L)) (list (CAR L))))
    )
  )

(reverseL '1)

(DEFUN rev(L)
  (COND
    ((NULL L) NIL)
    ((NUMBERP (CAR L)) (append (rev (CDR L)) (LIST (CAR L))))
    ((LISTP L) (append (rev (CDR L)) (LIST (reverseL (CAR L)))))
    )
  )

(DEFUN revv(L)
  (mapcap 'rev L)
  )

(revv '(1 2 (3 4) 5 (6 7 8)))
(rev '(1 2 (3 4) 5 (6 (7 8))))