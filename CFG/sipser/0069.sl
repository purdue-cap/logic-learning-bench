; Generated from sipser-derived: not_ww
; K=3 nonterminals (S0..S2); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Complement of { w w } (a classic context-free language); cf. Sipser (3e) Ch. 2")
(set-info :description "{ w | w is not of the form xx for any x }")



(declare-term-types
 ((CFG 0) (Rhs 0) (Rules 0))
 (
   ((cfg.top.S0 Rhs Rules))
   ((a) (b) (cfg.++ Rhs Rhs) (cfg.rhs.S0) (cfg.rhs.S1) (cfg.rhs.S2))
   ((cfg.lhs.S0 Rhs Rules) (cfg.lhs.S1 Rhs Rules) (cfg.lhs.S2 Rhs Rules) (end))
 )
)

(declare-sort Pos 0)
(declare-fun a (Pos) Bool)
(declare-fun b (Pos) Bool)

(define-model w_p_a
  (define-univ Pos ($0))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_b
  (define-univ Pos ($0))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_p_ab
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_p_ba
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_p_aaa
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_aab
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_p_aba
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_p_abb
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_n_aa
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_bb
  (define-univ Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_aaaa
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_abab
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
)

(define-model w_n_baba
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_n_bbbb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_aaaaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_aabaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($5) true) ((_) false))))
)

(define-model w_n_abaaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($4) true) ((_) false))))
)

(define-model w_n_abbabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_baabaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) ((_) false))))
)

(define-model w_n_babbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-finite CFG.Asp
  (record
    (model Model)
    (i Int)
    (j Int)
    (mode (enum base reset.S0 reset.S1 reset.S2 find.S0 find.S1 find.S2)))
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
          (and (= (mode asp) reset.S2)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S2)))
      )))))

(define-semantics
  ((Rhs.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (a (i asp)))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1) (= (mode asp) reset.S2))
               (CFG.Sem (parent n) asp))))
     ((b)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (b (i asp)))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1) (= (mode asp) reset.S2))
               (CFG.Sem (parent n) asp))))
     ((cfg.++ x y)
      (or (and (= (mode asp) base)
               (exists ((k (int-range (i asp) (j asp))))
                 (and (Rhs.Sem x (CFG.Asp (model asp) (i asp) k base))
                      (Rhs.Sem y (CFG.Asp (model asp) k (j asp) base)))))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1) (= (mode asp) reset.S2))
               (CFG.Sem (parent n) asp))))
     ((cfg.rhs.S0)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S0))))
     ((cfg.rhs.S1)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S1))))
     ((cfg.rhs.S2)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S2)))))))

(define-semantics
  ((Rules.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y)
      (or
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1) (= (mode asp) reset.S2))
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S0)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))
          (and (= (mode asp) find.S1)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1)))
          (and (= (mode asp) find.S2)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S2)))
      ))
     ((cfg.lhs.S1 x y)
      (or
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1) (= (mode asp) reset.S2))
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S1)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1))))
          (and (= (mode asp) find.S0)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0)))
          (and (= (mode asp) find.S2)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S2)))
      ))
     ((cfg.lhs.S2 x y)
      (or
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1) (= (mode asp) reset.S2))
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S2)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S2))))
          (and (= (mode asp) find.S0)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0)))
          (and (= (mode asp) find.S1)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1)))
      ))
     ((end) false))))

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_a 0 (size (Pos w_p_a)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_b 0 (size (Pos w_p_b)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ab 0 (size (Pos w_p_ab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ba 0 (size (Pos w_p_ba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaa 0 (size (Pos w_p_aaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aab 0 (size (Pos w_p_aab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aba 0 (size (Pos w_p_aba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abb 0 (size (Pos w_p_abb)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bb 0 (size (Pos w_n_bb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaa 0 (size (Pos w_n_aaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abab 0 (size (Pos w_n_abab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baba 0 (size (Pos w_n_baba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbb 0 (size (Pos w_n_bbbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaaaa 0 (size (Pos w_n_aaaaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabaab 0 (size (Pos w_n_aabaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaaba 0 (size (Pos w_n_abaaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbabb 0 (size (Pos w_n_abbabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baabaa 0 (size (Pos w_n_baabaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babbab 0 (size (Pos w_n_babbab)) reset.S0))))

(check-synth)