; a^n b^n with three positives.  Forces the synthesizer to either find a
; recursive grammar (S -> aSb | ab) or enumerate finitely with three
; productions of total tree size > the recursive 11-node form.
; If we never see recursion under exact-learning search, that's evidence
; the BV encoding of `cfg.rhs.S` is too restrictive (cfg.rhs.S constant
; bit-vector loses too much context after saturation).



(declare-term-types
 ((CFG 0) (Rhs 0) (Rules 0))
 (
   ((cfg.top.S Rhs Rules))
   ((a) (b) (cfg.++ Rhs Rhs) (cfg.rhs.S))
   ((cfg.lhs.S Rhs Rules) (end))
 )
)

(declare-sort Pos 0)

(declare-fun a (Pos) Bool)
(declare-fun b (Pos) Bool)

; ab
(define-model w_ab
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

; aabb
(define-model w_aabb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

; aaabbb
(define-model w_aaabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) (($5) true) ((_) false))))
)

; aab  (counterexample)
(define-model w_aab
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

; abb  (counterexample)
(define-model w_abb
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-finite CFG.Asp
  (record
    (model Model)
    (i Int)
    (j Int)
    (mode (enum base reset.S find.S)))
  :where (and (<= 0 i) (<= i j) (<= j (size (Pos model)))))

(define-semantics
  ((CFG.Sem (n CFG) (asp CFG.Asp)))
  ((match n
     ((cfg.top.S x y)
      (and (= (mode asp) reset.S)
           (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S))))))))

(define-semantics
  ((Rhs.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (a (i asp)))
          (and (= (mode asp) reset.S)
               (CFG.Sem (parent n) asp))))
     ((b)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (b (i asp)))
          (and (= (mode asp) reset.S)
               (CFG.Sem (parent n) asp))))
     ((cfg.++ x y)
      (or (and (= (mode asp) base)
               (exists ((k (int-range (i asp) (j asp))))
                 (and (Rhs.Sem x (CFG.Asp (model asp) (i asp) k base))
                      (Rhs.Sem y (CFG.Asp (model asp) k (j asp) base)))))
          (and (= (mode asp) reset.S)
               (CFG.Sem (parent n) asp))))
     ((cfg.rhs.S)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S)))))))

(define-semantics
  ((Rules.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S x y)
      (or (and (= (mode asp) reset.S)
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S))))))
     ((end) false))))

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_ab     0 (size (Pos w_ab))     reset.S)))
(constraint      (CFG.Sem g (CFG.Asp w_aabb   0 (size (Pos w_aabb))   reset.S)))
(constraint      (CFG.Sem g (CFG.Asp w_aaabbb 0 (size (Pos w_aaabbb)) reset.S)))
(constraint (not (CFG.Sem g (CFG.Asp w_aab    0 (size (Pos w_aab))    reset.S))))
(constraint (not (CFG.Sem g (CFG.Asp w_abb    0 (size (Pos w_abb))    reset.S))))

(check-synth)
