;Write a function that returns the number of atoms in a list, at any level.

(DEFUN noAtoms(L)
  (COND
    ((NULL L) 0)
    ((NUMBERP L) 0)
    ((ATOM L) 1)
    ((LISTP L) (apply '+ (MAPCAR 'noAtoms L)))
    )
  )

(noAtoms '(a b 2 (c d 3 (4 5))))