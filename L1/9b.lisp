;Write a function to replace an element E by all elements of a list L1 at all levels of a given list L
;replaceE(E, L1, L) = [], L = []
;						L1 U replaceE(E, L1, [l2, ..., ln]), l1 = E
;						l1 U replaceE(E, L1, [l2, ..., ln]), otherwise
;replace(E, L1, L) = [], L = []
;					replaceE(E, L1, l1) U replace(E, L1, replace(E, L1, [l2, ..., ln]), l1 - list
;					l1 U replace(E, L1, replace(E, L1, [l2, ..., ln]), l1 = E && l1 -number
;					l1 U replace(E, L1, replace(E, L1, [l2, ..., ln]), otherwise
(DEFUN replaceE(E L1 L)
  (COND
    ((NULL L) NIL)
    ((= (CAR L) E) (CONS L1 (replaceE E L1 (CDR L))))
    (T (CONS (CAR L) (replaceE E L1 (CDR L))))
    )
  )

(setq list1 '(5 4))
(setq list2 '(1 2 2 3 4))
(replaceE '2 list1 list2)

(DEFUN replaceL(E L1 L)
  (COND
    ((NULL L) NIL)
    ((LISTP (CAR L)) (CONS (replaceE E L1 (CAR L)) (replaceL E L1 (CDR L))))
    ((AND (NUMBERP (CAR L)) (= (CAR L) E)) (CONS L1 (replaceL E L1 (CDR L))))
    (T (CONS (CAR L) (replaceL E L1 (CDR L))))
    )
  )

(setq ha '(5 4))
(setq haha '(1 (2 3) 2 4 (3 4)))
(replaceL '2 ha haha)