; Generated from sipser-derived: anbn
; K=1 nonterminals (S0..S0); S0 is the start symbol
; 3 positives + 12 negatives = 15 constraints
;
; Productivity-restricted variant of 0001.sl.
; The base problem lets the synthesizer pick non-productive grammars (RHSs with
; no terminal, e.g. S -> S or S -> SS), for which the dual / up-navigation
; semantics do NOT faithfully encode non-membership (Krogmeier-Madhusudan 2023,
; Sec. 7.2.2: the duals are sound only for productive grammars, i.e. every
; production RHS contains >= 1 terminal). That gap lets negatives such as `aaa`
; slip through. Here we add a separate productivity automaton (HasTerm / Prod)
; and require `g` to satisfy it -- the "product with a productivity automaton"
; remark in Sec. 7.2.2 -- restoring soundness of the negative constraints.
(set-info :author "Chentian Wu")
(set-info :source "Sipser (3e) Sec. 2.1, the canonical CFL {a^n b^n} (cf. {0^n 1^n}, grammar S -> aSb | eps)")
(set-info :description "{ a^n b^n | n >= 1 }, restricted to productive grammars")



(declare-term-types
 ((CFG 0) (Rhs 0) (Rules 0))
 (
   ((cfg.top.S0 Rhs Rules))
   ((a) (b) (cfg.++ Rhs Rhs) (cfg.rhs.S0))
   ((cfg.lhs.S0 Rhs Rules) (end))
 )
)

(declare-sort Pos 0)
(declare-fun a (Pos) Bool)
(declare-fun b (Pos) Bool)

(define-model w_p_ab
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_p_aabb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_p_aaabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_a
  (interp-sort Pos ($0))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_b
  (interp-sort Pos ($0))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_aa
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_ba
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_bb
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_aaa
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_aab
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_n_aba
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_abb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_n_baa
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_bab
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_n_bba
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-aspects CFG.Asp
  (record
    (model Model)
    (i Int)
    (j Int)
    (mode (enum base reset.S0 find.S0)))
  :where (and (<= 0 i) (<= i j) (<= j (size (Pos model)))))

(define-semantics
  ((CFG.Sem (n CFG) (asp CFG.Asp)))
  ((match n
     ((cfg.top.S0 x y)
      (or
          (and (= (mode asp) reset.S0)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))
      )))))

(define-semantics
  ((Rhs.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (a (i asp)))
          (and (or (= (mode asp) reset.S0))
               (CFG.Sem (parent n) asp))))
     ((b)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (b (i asp)))
          (and (or (= (mode asp) reset.S0))
               (CFG.Sem (parent n) asp))))
     ((cfg.++ x y)
      (or (and (= (mode asp) base)
               (exists ((k (int-range (i asp) (j asp))))
                 (and (Rhs.Sem x (CFG.Asp (model asp) (i asp) k base))
                      (Rhs.Sem y (CFG.Asp (model asp) k (j asp) base)))))
          (and (or (= (mode asp) reset.S0))
               (CFG.Sem (parent n) asp))))
     ((cfg.rhs.S0)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S0)))))))

(define-semantics
  ((Rules.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y)
      (or
          (and (or (= (mode asp) reset.S0))
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S0)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))
      ))
     ((end) false))))

;; Reset-state up-navigation (Krogmeier-Madhusudan 2023, Fig. 7). In the
;; reset(z) state every symbol except top(z) navigates up one level — the
;; paper writes this as the `_` case. Here top(z) is cfg.top.S0 (handled by
;; the CFG.Sem-on-CFG spec above), so each Rhs/Rules constructor propagates
;; CFG.Sem to its parent in reset.S0 mode. Listed explicitly per constructor.
(define-semantics
  ((CFG.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)          (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp)))
     ((b)          (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp)))
     ((cfg.++ x y) (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp)))
     ((cfg.rhs.S0) (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp))))))

(define-semantics
  ((CFG.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y) (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp)))
     ((end)            (and (= (mode asp) reset.S0) (CFG.Sem (parent n) asp))))))

;; Productivity automaton (Krogmeier-Madhusudan 2023, Sec. 7.2.2). A grammar is
;; productive iff every production's right-hand side contains at least one
;; terminal. HasTerm decides "this Rhs subtree contains a terminal"; Prod walks
;; the right spine of productions (top, then each lhs) and requires every RHS to
;; be terminal-bearing. This automaton is independent of the input word, so the
;; aspect is threaded but never read; taking its product with the membership
;; checker above enforces productivity on the synthesized grammar.
(define-semantics
  ((HasTerm (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)          true)
     ((b)          true)
     ((cfg.rhs.S0) false)
     ((cfg.++ x y) (or (HasTerm x asp) (HasTerm y asp))))))

(define-semantics
  ((Prod (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y) (and (HasTerm x asp) (Prod y asp)))
     ((end)            true))))

(define-semantics
  ((Prod (n CFG) (asp CFG.Asp)))
  ((match n
     ((cfg.top.S0 x y) (and (HasTerm x asp) (Prod y asp))))))

(synth-fun g () CFG)

; Restrict the search to productive grammars (every production RHS has a terminal).
; Prod ignores the aspect, so the model/positions are dummies; asserted once per
; declared model for uniformity with the membership constraints below.
(constraint (Prod g (CFG.Asp w_p_ab 0 0 base)))
(constraint (Prod g (CFG.Asp w_p_aabb 0 0 base)))
(constraint (Prod g (CFG.Asp w_p_aaabbb 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_a 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_b 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_aa 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_ba 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_bb 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_aaa 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_aab 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_aba 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_abb 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_baa 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_bab 0 0 base)))
(constraint (Prod g (CFG.Asp w_n_bba 0 0 base)))

(constraint      (CFG.Sem g (CFG.Asp w_p_ab 0 (size (Pos w_p_ab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aabb 0 (size (Pos w_p_aabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaabbb 0 (size (Pos w_p_aaabbb)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a 0 (size (Pos w_n_a)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_b 0 (size (Pos w_n_b)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba 0 (size (Pos w_n_ba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bb 0 (size (Pos w_n_bb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa 0 (size (Pos w_n_aaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab 0 (size (Pos w_n_aab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aba 0 (size (Pos w_n_aba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abb 0 (size (Pos w_n_abb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa 0 (size (Pos w_n_baa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bab 0 (size (Pos w_n_bab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bba 0 (size (Pos w_n_bba)) reset.S0))))

(check-synth)
