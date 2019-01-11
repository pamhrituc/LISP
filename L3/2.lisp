;Write a function that returns the sum of numeric atoms in a list, at any level.

(DEFUN sumL (L)
  (COND
    ((NULL L) 0)
    ((NUMBERP L) L)
    ((ATOM L) 0)
    ((LISTP L) (apply '+ (MAPCAR 'sumL L)))
    )
  )

(sumL '(1 2 3 4))
(sumL '(5 (6 7 8 (9 10))))