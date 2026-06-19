; Generated from sipser-derived: start_end_same
; K=2 nonterminals (S0..S1); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Sipser (3e) Exercise 2.4(b): starts and ends with the same symbol")
(set-info :description "{ w | w[0] = w[-1] }")

(require "./global/theory.k2.ab.sl")

(define-model w_p_a
  (interp-sort Pos ($0))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_b
  (interp-sort Pos ($0))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_p_aa
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_bb
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_p_aaa
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_aba
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_p_bab
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_p_bbb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_ab
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_ba
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_aab
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
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

(define-model w_n_bba
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_aaab
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
)

(define-model w_n_aabb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_n_abab
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
)

(define-model w_n_abbb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_baaa
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_baba
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_a 0 (size (Pos w_p_a)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_b 0 (size (Pos w_p_b)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aa 0 (size (Pos w_p_aa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bb 0 (size (Pos w_p_bb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaa 0 (size (Pos w_p_aaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aba 0 (size (Pos w_p_aba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bab 0 (size (Pos w_p_bab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbb 0 (size (Pos w_p_bbb)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ab 0 (size (Pos w_n_ab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba 0 (size (Pos w_n_ba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab 0 (size (Pos w_n_aab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abb 0 (size (Pos w_n_abb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa 0 (size (Pos w_n_baa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bba 0 (size (Pos w_n_bba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaab 0 (size (Pos w_n_aaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabb 0 (size (Pos w_n_aabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abab 0 (size (Pos w_n_abab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbb 0 (size (Pos w_n_abbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaa 0 (size (Pos w_n_baaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baba 0 (size (Pos w_n_baba)) reset.S0))))

(check-synth)
