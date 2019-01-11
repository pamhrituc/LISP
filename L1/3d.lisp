;d) Write a function that determines the number of occurrences of a given atom in a nonlinear list.

(DEFUN app(L E)
  (COND
    ((NULL L) 0)
    ((= (CAR L) E) (+ 1 (app (CDR L) E)))
    (T (app (CDR L) E))
    )
  )

;(app '(1 2 3 1 4 1) 1)

(DEFUN appNL (L E)
  (COND
    ((NULL L) 0)
    ((AND (NUMBERP (CAR L)) (= (CAR L) E)) (+ 1 (appNL (CDR L) E)))
    ((AND (NUMBERP (CAR L)) (NOT(= (CAR L) E))) (appNL (CDR L) E))
    ((LISTP (CAR L)) (+ (app(CAR L) E) (appNL (CDR L) E)))
    )
  )

(appNL '(2 3(1 1 1)) 1)