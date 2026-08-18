;; Shared CFG theory: K=1 nonterminals, alphabet {a,b}.
;; Used by the CFG/*.sl instances that (require) it.

(provide CFG Rhs Rules Pos a b succ leq head tail CFG.Asp
         CFG.Sem Rhs.Sem Rules.Sem
         CFG.Sem.dual Rhs.Sem.dual Rules.Sem.dual)

(declare-term-types
 ((CFG 0) (Rhs 0) (Rules 0))
 (
   ((cfg.top.S0 Rhs Rules))
   ((a) (b) (cfg.++ Rhs Rhs) (cfg.rhs.S0))
   ((cfg.lhs.S0 Rhs Rules) (end))
 )
)

; Canonical CFG algebraic axioms for pruning.
(declare-axiom (= (cfg.++ (cfg.++ x y) z) (cfg.++ x (cfg.++ y z))))
(declare-axiom (= (cfg.lhs.S0 x (cfg.lhs.S0 y z)) (cfg.lhs.S0 y (cfg.lhs.S0 x z))))
(declare-axiom (= (cfg.lhs.S0 x (cfg.lhs.S0 x z)) (cfg.lhs.S0 x z)))
(declare-axiom (= (cfg.lhs.S0 cfg.rhs.S0 z) z))

(declare-sort Pos 0)
(declare-fun a (Pos) Bool)
(declare-fun b (Pos) Bool)
(declare-fun succ (Pos Pos) Bool)
(declare-fun leq (Pos Pos) Bool)
(declare-fun head () Pos)
(declare-fun tail () Pos)

(define-aspects CFG.Asp
  (record
    (i Pos)
    (j Pos)
    (mode (enum base reset.S0 find.S0)))
  :where (leq i j))

(define-semantics
  ((CFG.Sem (n CFG) (asp CFG.Asp)))
  ((match n
     ((cfg.top.S0 x y)
      (or
          (and (= (mode asp) reset.S0)
               (or (Rhs.Sem x (CFG.Asp (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (i asp) (j asp) find.S0))))
      )))))

(define-semantics
  ((Rhs.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)
      (or (and (= (mode asp) base)
               (succ (j asp) (i asp))
               (a (i asp)))
          (and (or (= (mode asp) reset.S0))
               (CFG.Sem (parent n) asp))))
     ((b)
      (or (and (= (mode asp) base)
               (succ (j asp) (i asp))
               (b (i asp)))
          (and (or (= (mode asp) reset.S0))
               (CFG.Sem (parent n) asp))))
     ((cfg.++ x y)
      (or (and (= (mode asp) base)
               (exists ((k Pos))
                 (and (leq (i asp) k) (leq k (j asp))
                      (Rhs.Sem x (CFG.Asp (i asp) k base))
                      (Rhs.Sem y (CFG.Asp k (j asp) base)))))
          (and (or (= (mode asp) reset.S0))
               (CFG.Sem (parent n) asp))))
     ((cfg.rhs.S0)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (i asp) (j asp) reset.S0)))))))

(define-semantics
  ((Rules.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y)
      (or
          (and (or (= (mode asp) reset.S0))
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S0)
               (or (Rhs.Sem x (CFG.Asp (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (i asp) (j asp) find.S0))))
      ))
     ((end) false))))

;; Reset-state up-navigation (Krogmeier-Madhusudan 2023, Fig. 7). In the
;; reset(z) state every symbol except top(z)=cfg.top.S0 navigates up one
;; level (the paper's `_` case), listed explicitly per constructor.
(define-semantics
  ((CFG.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a) (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp)))
     ((b) (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp)))
     ((cfg.++ x y) (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp)))
     ((cfg.rhs.S0) (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp))))))

(define-semantics
  ((CFG.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y) (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp)))
     ((end) (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp))))))

;; Explicit De Morgan dual of the three CFG evaluators.  Keeping rejection as
;; its own positive semantics gives the parent-bearing encoder a founded
;; rejection witness instead of asking it to negate primal acceptance.
(define-semantics
  ((CFG.Sem.dual (n CFG) (asp CFG.Asp)))
  ((match n
     ((cfg.top.S0 x y)
      (and
          (or (not (= (mode asp) reset.S0))
              (and (Rhs.Sem.dual x (CFG.Asp (i asp) (j asp) base))
                   (Rules.Sem.dual y (CFG.Asp (i asp) (j asp) find.S0))))
      )))))

(define-semantics
  ((Rhs.Sem.dual (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)
      (and (or (not (= (mode asp) base))
               (not (succ (j asp) (i asp)))
               (not (a (i asp))))
           (or (and (not (= (mode asp) reset.S0)))
               (CFG.Sem.dual (parent n) asp))))
     ((b)
      (and (or (not (= (mode asp) base))
               (not (succ (j asp) (i asp)))
               (not (b (i asp))))
           (or (and (not (= (mode asp) reset.S0)))
               (CFG.Sem.dual (parent n) asp))))
     ((cfg.++ x y)
      (and (or (not (= (mode asp) base))
               (forall ((k Pos))
                 (or (not (leq (i asp) k)) (not (leq k (j asp)))
                     (Rhs.Sem.dual x (CFG.Asp (i asp) k base))
                     (Rhs.Sem.dual y (CFG.Asp k (j asp) base)))))
           (or (and (not (= (mode asp) reset.S0)))
               (CFG.Sem.dual (parent n) asp))))
     ((cfg.rhs.S0)
      (or (not (= (mode asp) base))
          (CFG.Sem.dual (parent n) (CFG.Asp (i asp) (j asp) reset.S0)))))))

(define-semantics
  ((Rules.Sem.dual (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y)
      (and
          (or (and (not (= (mode asp) reset.S0)))
              (CFG.Sem.dual (parent n) asp))
          (or (not (= (mode asp) find.S0))
              (and (Rhs.Sem.dual x (CFG.Asp (i asp) (j asp) base))
                   (Rules.Sem.dual y (CFG.Asp (i asp) (j asp) find.S0))))
      ))
     ((end) true))))

(define-semantics
  ((CFG.Sem.dual (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a) (or (not (= (mode asp) reset.S0)) (CFG.Sem.dual (parent n) asp)))
     ((b) (or (not (= (mode asp) reset.S0)) (CFG.Sem.dual (parent n) asp)))
     ((cfg.++ x y) (or (not (= (mode asp) reset.S0)) (CFG.Sem.dual (parent n) asp)))
     ((cfg.rhs.S0) (or (not (= (mode asp) reset.S0)) (CFG.Sem.dual (parent n) asp))))))

(define-semantics
  ((CFG.Sem.dual (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y) (or (not (= (mode asp) reset.S0)) (CFG.Sem.dual (parent n) asp)))
     ((end) (or (not (= (mode asp) reset.S0)) (CFG.Sem.dual (parent n) asp))))))
