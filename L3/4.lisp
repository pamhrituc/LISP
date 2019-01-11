;Write a function that returns the product of numeric atoms in a list, at any level.

(DEFUN prodL (L)
  (COND
    ((NULL L) 1)
    ((NUMBERP L) L)
    ((ATOM L) 1)
    ((LISTP L) (apply '* (MAPCAR 'prodL L)))
    )
  )

(prodL '(1 2 3 4))
(prodL '(5 (6 7 8 (9 10))))