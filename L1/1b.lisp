;b) Write a function to check whether an atom E is a member of a list which is not necessarily linear.

;isElement(l1, l2, ..., ln, E) = false, L = []
;								true, l1 = E
;								isElement(l2, ..., ln), l1 != E

(DEFUN isElement(L E)
  (COND
    ((NULL L) NIL)
    ((= (CAR L) E) T)
    ((NOT(= (CAR L) E)) (isElement (CDR L) E))
    )
  )

;(isElement '(1 2 3 4) 3)

(DEFUN isElementL(L E)
  (COND
    ((NULL L) NIL)
    ((AND (NUMBERP (CAR L)) (= (CAR L) E)) T)
    ((AND (LISTP (CAR L)) (isElement (CAR L) E)) T)
    (T (isElementL (CDR L) E))
    )
  )

(isElementL '(1 (2 3) 4 (5 6 7)) 5)