; anbn-2 with the corrected semantic that propagates reset.S through Rhs/Rules
; nesting until reaching cfg.top.S.  In the original no1.sl-style encoding the
; cfg.rhs.S clause and the cfg.++/cfg.lhs.S reset.S clauses jump directly to
; CFG.Sem at parent, which only succeeds when the immediate parent is CFG-sort.
; That makes cfg.rhs.S unusable inside any nested cfg.++/cfg.lhs.S, so the
; synthesizer can only ever produce finite-enumeration grammars.
;
; Fix: in every (parent n) call from a Rhs/Rules node, allow BOTH the
; same-sort `Rhs.Sem (parent n)` / `Rules.Sem (parent n)` propagation (handles
; deeper nesting) AND the cross-sort `CFG.Sem (parent n)` jump (handles the
; immediate parent being cfg.top.S).  The disjunction means whichever sort the
; parent actually has, the appropriate rule fires.



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

(define-model w_ab
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_aabb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_aab
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
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
               ; FIX: walk up through Rhs OR jump to CFG.
               (or (CFG.Sem (parent n) asp)
                   (Rhs.Sem (parent n) asp)))))
     ((b)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (b (i asp)))
          (and (= (mode asp) reset.S)
               (or (CFG.Sem (parent n) asp)
                   (Rhs.Sem (parent n) asp)))))
     ((cfg.++ x y)
      (or (and (= (mode asp) base)
               (exists ((k (int-range (i asp) (j asp))))
                 (and (Rhs.Sem x (CFG.Asp (model asp) (i asp) k base))
                      (Rhs.Sem y (CFG.Asp (model asp) k (j asp) base)))))
          (and (= (mode asp) reset.S)
               (or (CFG.Sem (parent n) asp)
                   (Rhs.Sem (parent n) asp)))))
     ((cfg.rhs.S)
      (and (= (mode asp) base)
           ; FIX: walk up through Rhs OR jump to CFG, both with reset.S aspect
           (or (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S))
               (Rhs.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S))))))))

(define-semantics
  ((Rules.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S x y)
      (or (and (= (mode asp) reset.S)
               ; FIX: walk up through Rules OR jump to CFG
               (or (CFG.Sem (parent n) asp)
                   (Rules.Sem (parent n) asp)))
          (and (= (mode asp) find.S)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S))))))
     ((end) false))))

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_ab   0 (size (Pos w_ab))   reset.S)))
(constraint      (CFG.Sem g (CFG.Asp w_aabb 0 (size (Pos w_aabb)) reset.S)))
(constraint (not (CFG.Sem g (CFG.Asp w_aab  0 (size (Pos w_aab))  reset.S))))

(check-synth)
