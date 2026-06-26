;; Shared CFG theory: K=2 nonterminals, alphabet {a,b}.
;; Used by the CFG/*.sl instances that (require) it.

(provide CFG Rhs Rules Pos a b CFG.Asp CFG.Sem Rhs.Sem Rules.Sem)

(declare-term-types
 ((CFG 0) (Rhs 0) (Rules 0))
 (
   ((cfg.top.S0 Rhs Rules))
   ((a) (b) (cfg.++ Rhs Rhs) (cfg.rhs.S0) (cfg.rhs.S1))
   ((cfg.lhs.S0 Rhs Rules) (cfg.lhs.S1 Rhs Rules) (end))
 )
)

; Canonical CFG algebraic axioms for pruning.
(declare-axiom (= (cfg.++ (cfg.++ x y) z) (cfg.++ x (cfg.++ y z))))
(declare-axiom (= (cfg.lhs.S0 x (cfg.lhs.S0 y z)) (cfg.lhs.S0 y (cfg.lhs.S0 x z))))
(declare-axiom (= (cfg.lhs.S0 x (cfg.lhs.S0 x z)) (cfg.lhs.S0 x z)))
(declare-axiom (= (cfg.lhs.S0 cfg.rhs.S0 z) z))
(declare-axiom (= (cfg.lhs.S1 x (cfg.lhs.S1 y z)) (cfg.lhs.S1 y (cfg.lhs.S1 x z))))
(declare-axiom (= (cfg.lhs.S1 x (cfg.lhs.S1 x z)) (cfg.lhs.S1 x z)))
(declare-axiom (= (cfg.lhs.S1 cfg.rhs.S1 z) z))

(declare-sort Pos 0)
(declare-fun a (Pos) Bool)
(declare-fun b (Pos) Bool)

(define-aspects CFG.Asp
  (record
    (model Model)
    (i Int)
    (j Int)
    (mode (enum base reset.S0 reset.S1 find.S0 find.S1)))
  :where (and (<= 0 i) (<= i j) (<= j (size (Pos model)))))

(define-semantics
  ((CFG.Sem (n CFG) (asp CFG.Asp)))
  ((match n
     ((cfg.top.S0 x y)
      (or
          (and (= (mode asp) reset.S0)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))
          (and (= (mode asp) reset.S1)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1)))
      )))))

(define-semantics
  ((Rhs.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (a (i asp)))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
               (CFG.Sem (parent n) asp))))
     ((b)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (b (i asp)))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
               (CFG.Sem (parent n) asp))))
     ((cfg.++ x y)
      (or (and (= (mode asp) base)
               (exists ((k (int-range (i asp) (j asp))))
                 (and (Rhs.Sem x (CFG.Asp (model asp) (i asp) k base))
                      (Rhs.Sem y (CFG.Asp (model asp) k (j asp) base)))))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
               (CFG.Sem (parent n) asp))))
     ((cfg.rhs.S0)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S0))))
     ((cfg.rhs.S1)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S1)))))))

(define-semantics
  ((Rules.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y)
      (or
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S0)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))
          (and (= (mode asp) find.S1)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1)))
      ))
     ((cfg.lhs.S1 x y)
      (or
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S1)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1))))
          (and (= (mode asp) find.S0)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0)))
      ))
     ((end) false))))

;; Reset-state up-navigation (Krogmeier-Madhusudan 2023, Fig. 7). In the
;; reset(z) state every symbol except top(z)=cfg.top.S0 navigates up one
;; level (the paper's `_` case), listed explicitly per constructor.
(define-semantics
  ((CFG.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a) (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1)) (CFG.Sem (parent n) asp)))
     ((b) (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1)) (CFG.Sem (parent n) asp)))
     ((cfg.++ x y) (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1)) (CFG.Sem (parent n) asp)))
     ((cfg.rhs.S0) (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1)) (CFG.Sem (parent n) asp)))
     ((cfg.rhs.S1) (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1)) (CFG.Sem (parent n) asp))))))

(define-semantics
  ((CFG.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y) (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1)) (CFG.Sem (parent n) asp)))
     ((cfg.lhs.S1 x y) (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1)) (CFG.Sem (parent n) asp)))
     ((end) (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1)) (CFG.Sem (parent n) asp))))))
