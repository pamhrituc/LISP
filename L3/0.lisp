;cmmmc dintr-o lista neliniara

(DEFUN gcd2(A B)
  (COND
    ((= A B) A)
    ((< A B) (gcd2 A (- B A)))
    (T (gcd2 (- A B) B))
    )
  )

;(gcd2 '4 8)

(DEFUN lcm2(A B)
  (COND
    ((= A B) A)
    (T (/ (* A B) (gcd2 A B)))
    )
  )

(lcm2 '25 5)

(DEFUN lcmL(L)
  (COND
    ((NULL L) 0)
    ((= (LIST-LENGTH L) 1) (CAR L))
    ((AND (NUMBERP (CAR L)) (NUMBERP (CAR (CDR L)))) (lcmL (CONS (lcm2 (CAR L) (CAR (CDR L))) (CDR (CDR L)))))
    )
  )

(lcmL '(25 2 5))

(DEFUN lcmNL(L)
  (COND
    ((NULL L) 0)
    ((AND (NUMBERP (CAR L)) (NUMBERP (CAR (CDR L)))) (lcmL (CONS (lcm2 (CAR L) (CAR (CDR L))) (CDR (CDR L)))))
    ((LISTP (CAR L)) (lcmNL (CONS (lcmL (CAR L)) (CDR L))))
    ((LISTP (CAR (CDR L))) (lcmNL (CONS (CONS (CAR L) (LIST (lcmL (CAR (CDR L))))) (CDR (CDR L))))) 
    )
  )

(lcmNL '(5 25 (50 10)))
(lcmNL '((50 10) 5 25))
(lcmNL '(5 (50 10) 25))