; Generated from sipser-derived: a_ge_b
; K=1 nonterminals (S0..S0); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Sipser (3e) Problem 2.28(c): number of a's is at least the number of b's")
(set-info :description "{ w | #a(w) >= #b(w) }")

(require "./global/theory.k1.ab.sl")

(define-model w_p_a
  (interp-sort Pos ($0))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_aa
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_ab
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_p_ba
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_p_aaa
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_aab
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_p_aba
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_p_baa
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_b
  (interp-sort Pos ($0))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_bb
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_abb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
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

(define-model w_n_bbb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_abbb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_babb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_bbab
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
)

(define-model w_n_bbba
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_bbbb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_aabbb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) ((_) false))))
)

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_a 0 (size (Pos w_p_a)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aa 0 (size (Pos w_p_aa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ab 0 (size (Pos w_p_ab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ba 0 (size (Pos w_p_ba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaa 0 (size (Pos w_p_aaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aab 0 (size (Pos w_p_aab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aba 0 (size (Pos w_p_aba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_baa 0 (size (Pos w_p_baa)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_b 0 (size (Pos w_n_b)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bb 0 (size (Pos w_n_bb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abb 0 (size (Pos w_n_abb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bab 0 (size (Pos w_n_bab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bba 0 (size (Pos w_n_bba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbb 0 (size (Pos w_n_bbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbb 0 (size (Pos w_n_abbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babb 0 (size (Pos w_n_babb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbab 0 (size (Pos w_n_bbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbba 0 (size (Pos w_n_bbba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbb 0 (size (Pos w_n_bbbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabbb 0 (size (Pos w_n_aabbb)) reset.S0))))

(check-synth)
