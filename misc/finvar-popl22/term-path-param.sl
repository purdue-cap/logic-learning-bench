(declare-sort U 0)
(declare-fun src () U)
(declare-fun nxt (U) U)
(declare-fun arg () U)
(declare-fun out () U)

(declare-term-types
 ((TermU.x0 0))
 (((x0)
   (tx.src)
   (tx.nxt TermU.x0))))

(define-finite TermU.x0.Asp (record (model Model) (x0 U)))

(define-semantics
  ((TermU.x0.Sem (term TermU.x0) (asp TermU.x0.Asp)))
  :returns U
  ((match term
     ((x0) (x0 asp))
     ((tx.src) src)
     ((tx.nxt y) (nxt (TermU.x0.Sem y asp))))))

(define-model G1
  (define-univ U ($0 $1 $2 $3))
  (interp-fun src ($0))
  (interp-fun arg ($1))
  (interp-fun out ($3))
  (interp-fun nxt (match ((($0) $1) (($1) $2) (($2) $3) (($3) $3) ((_) $0)))))

(define-model G2
  (define-univ U ($0 $1 $2 $3 $4))
  (interp-fun src ($4))
  (interp-fun arg ($0))
  (interp-fun out ($2))
  (interp-fun nxt (match ((($0) $1) (($1) $2) (($2) $3) (($4) $3) ((_) $0)))))

(synth-fun f ((x0 U)) TermU.x0)

(constraint (= (TermU.x0.Sem f (TermU.x0.Asp G1 (get-fun arg G1))) (get-fun out G1)))
(constraint (= (TermU.x0.Sem f (TermU.x0.Asp G2 (get-fun arg G2))) (get-fun out G2)))

(check-synth)
