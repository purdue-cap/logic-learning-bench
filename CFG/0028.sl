; Generated from sipser-derived: four_as
; K=2 nonterminals (S0..S1); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Variant of Sipser (3e) Exercise 2.4(a)")
(set-info :description "{ w | #a(w) >= 4 }")

(require "./global/theory.k2.ab.sl")

(define-model w_p_aaaa
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_aaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_p_aaaab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($4) true) ((_) false))))
)

(define-model w_p_aaaba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
)

(define-model w_p_aabaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_p_abaaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_p_baaaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_p_aaaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match (((_) false))))
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

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_aaaa 0 (size (Pos w_p_aaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaaaa 0 (size (Pos w_p_aaaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaaab 0 (size (Pos w_p_aaaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaaba 0 (size (Pos w_p_aaaba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aabaa 0 (size (Pos w_p_aabaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abaaa 0 (size (Pos w_p_abaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_baaaa 0 (size (Pos w_p_baaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaaaaa 0 (size (Pos w_p_aaaaaa)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a 0 (size (Pos w_n_a)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_b 0 (size (Pos w_n_b)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ab 0 (size (Pos w_n_ab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba 0 (size (Pos w_n_ba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bb 0 (size (Pos w_n_bb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa 0 (size (Pos w_n_aaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab 0 (size (Pos w_n_aab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aba 0 (size (Pos w_n_aba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abb 0 (size (Pos w_n_abb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa 0 (size (Pos w_n_baa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bab 0 (size (Pos w_n_bab)) reset.S0))))

(check-synth)
