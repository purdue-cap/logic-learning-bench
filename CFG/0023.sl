; Generated from sipser-derived: wcwR
; K=1 nonterminals (S0..S0); S0 is the start symbol
; 7 positives + 12 negatives = 19 constraints
(set-info :author "Chentian Wu")
(set-info :source "Center-marked palindrome (deterministic CFL); cf. Sipser (3e) Sec. 2.1")
(set-info :description "{ u c u^R | u in {a,b}* }")

(require "./global/theory.k1.abc.sl")

(define-model w_p_c
  (interp-sort Pos ($0))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($0) true) ((_) false))))
)

(define-model w_p_aca
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($1) true) ((_) false))))
)

(define-model w_p_bcb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun c (match ((($1) true) ((_) false))))
)

(define-model w_p_aacaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($2) true) ((_) false))))
)

(define-model w_p_abcba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun c (match ((($2) true) ((_) false))))
)

(define-model w_p_bacab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($4) true) ((_) false))))
  (interp-fun c (match ((($2) true) ((_) false))))
)

(define-model w_p_bbcbb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun c (match ((($2) true) ((_) false))))
)

(define-model w_n_a
  (interp-sort Pos ($0))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_b
  (interp-sort Pos ($0))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_aa
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_ab
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_ac
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($1) true) ((_) false))))
)

(define-model w_n_ba
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun c (match (((_) false))))
)

(define-model w_n_bb
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
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

(define-model w_n_cc
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_aaa
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun c (match (((_) false))))
)

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_c 0 (size (Pos w_p_c)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aca 0 (size (Pos w_p_aca)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bcb 0 (size (Pos w_p_bcb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aacaa 0 (size (Pos w_p_aacaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abcba 0 (size (Pos w_p_abcba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bacab 0 (size (Pos w_p_bacab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbcbb 0 (size (Pos w_p_bbcbb)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a 0 (size (Pos w_n_a)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_b 0 (size (Pos w_n_b)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ab 0 (size (Pos w_n_ab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ac 0 (size (Pos w_n_ac)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba 0 (size (Pos w_n_ba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bb 0 (size (Pos w_n_bb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bc 0 (size (Pos w_n_bc)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ca 0 (size (Pos w_n_ca)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_cb 0 (size (Pos w_n_cb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_cc 0 (size (Pos w_n_cc)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa 0 (size (Pos w_n_aaa)) reset.S0))))

(check-synth)
