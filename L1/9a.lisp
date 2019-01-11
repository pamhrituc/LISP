;Write a function that merges 2 sorted linear lists and keeps double values
;merge(L1 L2) = [], L1 = L2 = []
;               L1, L2 = []
;               L2, L1 = []
;               l11 U merge([l12, ..., l1n], L2), min(l11, l21) = l11
;				l21 U merge(L1, [l22, ..., l2n]), otherwise
(DEFUN mergeL(L1 L2)
  (COND
    ((AND(NULL L1) (NULL L2)) NIL)
    ((NULL L1) L2)
    ((NULL L2) L1)
    ((= (MIN (CAR L1) (CAR L2)) (CAR L1)) (CONS(CAR L1)(mergeL (CDR L1) L2)))
    (T (CONS(CAR L2)(mergeL L1 (CDR L2))))
    )
  )

(setq list1 '(1 3 5 7 8))
(setq list2 '(2 4 5 6 8))
(mergeL '(1 3 5 7 8) list2)