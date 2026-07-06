; Generated from sipser-derived: abcn_i_eq_j_or_i_eq_k
; K=3 nonterminals (S0..S2); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Sipser (3e) Problem 2.57: B = { a^i b^j c^k | i = j or i = k }")
(set-info :description "{ a^i b^j c^k | i = j or i = k }")

(require "./global/theory.k3.abc.sl")

(define-model w_p_b
  (interp-sort Pos ($0))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_p_c
  (interp-sort Pos ($0))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($0) true) ((_) false))))
)

(define-model w_p_ab
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_p_ac
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($1) true) ((_) false))))
)

(define-model w_p_bb
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_p_cc
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_p_abc
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
  (interp-fun c (match ((($2) true) ((_) false))))
)

(define-model w_p_bbb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_a
  (interp-sort Pos ($0))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_aa
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_ba
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_bc
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun c (match ((($1) true) ((_) false))))
)

(define-model w_n_ca
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($0) true) ((_) false))))
)

(define-model w_n_cb
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
  (interp-fun c (match ((($0) true) ((_) false))))
)

(define-model w_n_aaa
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_aab
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_aac
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($2) true) ((_) false))))
)

(define-model w_n_aba
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_abb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_aca
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($1) true) ((_) false))))
)

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_b 0 (size (Pos w_p_b)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_c 0 (size (Pos w_p_c)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ab 0 (size (Pos w_p_ab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ac 0 (size (Pos w_p_ac)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bb 0 (size (Pos w_p_bb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_cc 0 (size (Pos w_p_cc)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abc 0 (size (Pos w_p_abc)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbb 0 (size (Pos w_p_bbb)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a 0 (size (Pos w_n_a)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba 0 (size (Pos w_n_ba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bc 0 (size (Pos w_n_bc)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ca 0 (size (Pos w_n_ca)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_cb 0 (size (Pos w_n_cb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa 0 (size (Pos w_n_aaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab 0 (size (Pos w_n_aab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aac 0 (size (Pos w_n_aac)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aba 0 (size (Pos w_n_aba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abb 0 (size (Pos w_n_abb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aca 0 (size (Pos w_n_aca)) reset.S0))))

(check-synth)
