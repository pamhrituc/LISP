;Determine the list of nodes accesed in preorder in a tree of type (2).
;L = (A (B) (C (D) (E)))

;preorder(l1, ..., ln) = [], L=[]
;						{l1} U preorder(l2, ..., ln), l1-atom
;						preorder(l1) U preorder(l2, ..., ln), otherwise

(DEFUN preorder(L)
  (COND
    ((NULL L) NIL)
    ((ATOM (CAR L)) (CONS (CAR L) (preorder (CDR L))))
    (T (append (preorder (CAR L)) (preorder (CDR L))))
    )
  )

(preorder '(A (B) (C (D) (E))))
(preorder '(A (B (D (H (J) (K (L) (M)))) (E)) (C (F) (G (I)))))