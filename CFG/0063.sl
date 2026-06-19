; Generated from sipser-derived: palindrome_or_equal_ab
; K=3 nonterminals (S0..S2); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Union of Sipser (3e) Exercise 2.4(e) and Problem 2.28(b)")
(set-info :description "{ w | w = w^R } U { w | #a = #b }")

(require "./global/theory.k3.ab.sl")

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

(define-model w_n_aaba
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_n_abaa
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
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

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_a 0 (size (Pos w_p_a)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_b 0 (size (Pos w_p_b)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aa 0 (size (Pos w_p_aa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ab 0 (size (Pos w_p_ab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ba 0 (size (Pos w_p_ba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bb 0 (size (Pos w_p_bb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaa 0 (size (Pos w_p_aaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aba 0 (size (Pos w_p_aba)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab 0 (size (Pos w_n_aab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abb 0 (size (Pos w_n_abb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa 0 (size (Pos w_n_baa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bba 0 (size (Pos w_n_bba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaab 0 (size (Pos w_n_aaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaba 0 (size (Pos w_n_aaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaa 0 (size (Pos w_n_abaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbb 0 (size (Pos w_n_abbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaa 0 (size (Pos w_n_baaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babb 0 (size (Pos w_n_babb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbab 0 (size (Pos w_n_bbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbba 0 (size (Pos w_n_bbba)) reset.S0))))

(check-synth)
