; Generated from sipser-derived: b_twice_a
; K=1 nonterminals (S0..S0); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Mirror of Sipser (3e) Problem 2.21")
(set-info :description "{ w | #b(w) = 2*#a(w) }")

(require "./global/theory.k1.ab.sl")

(define-model w_p_abb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bab
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_p_bba
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_p_aabbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_ababbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_abbabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_abbbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_p_abbbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
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

(define-model w_n_baa
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_bbb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_aaaa
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_abb 0 (size (Pos w_p_abb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bab 0 (size (Pos w_p_bab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bba 0 (size (Pos w_p_bba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aabbbb 0 (size (Pos w_p_aabbbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ababbb 0 (size (Pos w_p_ababbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abbabb 0 (size (Pos w_p_abbabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abbbab 0 (size (Pos w_p_abbbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abbbba 0 (size (Pos w_p_abbbba)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a 0 (size (Pos w_n_a)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_b 0 (size (Pos w_n_b)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ab 0 (size (Pos w_n_ab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba 0 (size (Pos w_n_ba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bb 0 (size (Pos w_n_bb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa 0 (size (Pos w_n_aaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab 0 (size (Pos w_n_aab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aba 0 (size (Pos w_n_aba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa 0 (size (Pos w_n_baa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbb 0 (size (Pos w_n_bbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaa 0 (size (Pos w_n_aaaa)) reset.S0))))

(check-synth)
