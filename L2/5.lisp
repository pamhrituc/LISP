;Return the level (depth) of a node in a tree of type (1). The level of the root element is 0.

;(A 2 B 0 C 2 D 0 E 0)

(DEFUN nodeLevel(L N)
  (COND
    ((NULL L) -100)
    ((eq (CAR L) N) 0)
    ((AND (NOT (eq (CAR L) N)) (NOT(=(CAR (CDR L)) 0))) (+ 1 (nodeLevel(CDR (CDR L)) N)))
    (T (nodeLevel(CDR (CDR L)) N))
    )
  )

(nodeLevel '() 'A)
(nodeLevel '(A 2 B 0 C 2 D 0 E 0) 'A)
(nodeLevel '(A 2 B 0 C 2 D 0 E 0) 'D)
(nodeLevel '(A 2 B 0 C 2 D 0 E 0) 'B)
(nodeLevel '(A 2 B 0 C 2 D 0 E 0) 'W)