;Write a function to return the gcd of all number in a linear list
;gcd(A, B) = A, A = B
;			0, B = 0
;			0, A = 0
;			gcd(A-B, B), A > B
;			gcd(A, B-A), B > A
;gcdL(L) = 0, L = []
;			l1, L = [l1]
;			gcdL(gcd(l1, l2), ..., ln), otherwise
(DEFUN GCD2 (A B)
  (COND
    ((= A B) A)
    ((= A 0) A)
    ((= B 0) B)
    ((> A B) (GCD2 (- A B) B))
    ((< A B) (GCD2 A (- B A)))
    )
  )

(GCD2 25 3)

(DEFUN GCDL (L)
  (COND
    ((NULL L) 0)
    ((= (LIST-LENGTH L) 1) (CAR L))
    (T (GCDL (CONS (GCD2 (CAR L) (CAR (CDR L))) (CDR (CDR L)))))
    )
  )

(GCDL '(20 3 40))