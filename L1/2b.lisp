;b) Write a function to return the depth of a list. Example: the depth of a linear list is 1.

(DEFUN depth(L)
  (COND
    ((NULL L) 1)
    ((NOT (LISTP (CAR L))) (depth (CDR L)))
    ((LISTP (CAR L)) (+ 1 (depth (CDR (CAR L)))))
    )
  )

(depth '(1 2 3))
(depth '())
(depth '(1 3 (4 5)))
(depth '(1 2 (4 5 (3 2))))