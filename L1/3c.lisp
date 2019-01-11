;c) Write a function that returns the greatest common divisor of all numbers in a nonlinear list.

(DEFUN gcd2(A B)
  (COND
    ((= A B) A)
    ((<= A B) (gcd2 A (- B A)))
    ((< B A) (gcd2 (- A B) B))
    )
  )

;(gcd2 '4 6)

(DEFUN gcdL(L)
  (COND
    ((NULL L) 0)
    ((= (LIST-LENGTH L) 1) (CAR L))
    (T (gcdL (CONS (gcd2 (CAR L) (CAR (CDR L))) (CDR (CDR L)))))
  )
  )

;(gcdL '(4 8 16))

(DEFUN gcdNL(L)
  (COND
    ((NULL L) 0)
    ((= (LIST-LENGTH L) 1) (gcdL L))
    ((AND (NUMBERP (CAR L)) (NUMBERP (CAR(CDR L)))) (gcdNL (CONS (gcd2 (CAR L) (CAR (CDR L))) (CDR (CDR L)))))
    ((AND (NUMBERP (CAR L)) (LISTP (CAR(CDR L)))) (gcdNL (CONS (CAR L) (gcdL (CAR(CDR L))))))
    ((LISTP (CAR L)) (gcdNL (CONS (gcdL (CAR L)) (CDR L))))
    )
  )

(gcdNL '((8 4) 16))