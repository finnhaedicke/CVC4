; COMMAND-LINE: --incremental
; EXPECT: unsat
; EXPECT: sat

; x not in A U B => x not in A
(set-logic ALL_SUPPORTED)
(define-sort SetInt () (Set Int))
(declare-fun A () (Set Int))
(declare-fun B () (Set Int))
(declare-fun x () Int)
(assert (not (in x (union A B))))
(push 1)
(assert (in x B))
(check-sat)
(pop 1)
(check-sat)