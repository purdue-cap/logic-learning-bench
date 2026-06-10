(declare-sort U 0)
(declare-fun src () U)
(declare-fun dst () U)
(declare-fun nxt (U) U)

(declare-term-types
 ((TermU 0))
 (((t.src)
   (t.nxt TermU))))

(define-aspects TermU.Asp (record (model Model)))

(define-semantics
  ((TermU.Sem (term TermU) (asp TermU.Asp)))
  :returns U
  ((match term
     ((t.src) src)
     ((t.nxt x) (nxt (TermU.Sem x asp))))))

(define-model G1
  (interp-sort U ($0 $1 $2 $3))
  (interp-fun src ($0))
  (interp-fun dst ($2))
  (interp-fun nxt (match (
    (($0) $1)
    (($1) $2)
    (($2) $2)
    ((_) $0)
  ))))

(define-model G2
  (interp-sort U ($0 $1 $2 $3 $4))
  (interp-fun src ($4))
  (interp-fun dst ($2))
  (interp-fun nxt (match (
    (($4) $3)
    (($3) $2)
    (($2) $2)
    ((_) $0)
  ))))

(synth-fun phi () TermU)

(constraint (= (TermU.Sem phi (TermU.Asp G1)) (get-fun dst G1)))
(constraint (= (TermU.Sem phi (TermU.Asp G2)) (get-fun dst G2)))

(check-synth)
