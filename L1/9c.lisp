;Write a function that determines the sum of 2 numbers in list representation and returns the corresponding decimal number, without transforming the representation of the number from list to number
;sum(L) = 0, L = []
;		l1, L = [l1]
;		[] U (l1 + l2), otherwise
(DEFUN SUM2 (L)
  (COND
    ((NULL L) 0)
    ((= (LIST-LENGTH L) 1) (CAR L))
    (T (CONS (+ (CAR L) (CAR(CDR L))) NIL))
    )
  )

(SUM2 '(1 2))