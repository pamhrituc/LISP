;a) Write a function to return the n-th element of a list, or NIL if such an element does not exist.
;return (l1, l2, .., ln, N, CP) = [], L = []
;				return(l2, ..., ln, N), CP!=N
;				l1, CP = N

(DEFUN returnN(L N CP)
  (COND
    ((NULL L) NIL)
    ((= CP N) (CAR L))
    ((NOT(= CP N)) (returnN (CDR L) N (+ CP 1)))
    )
  )

(returnN '(1 2 3 4) 3 1)
(returnN '(1 2 3 4) 5 1)