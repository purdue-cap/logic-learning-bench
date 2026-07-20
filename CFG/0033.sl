; Generated from sipser-derived: ends_b
; K=2 nonterminals (S0..S1); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Formal language theory; Sipser-style CFG separation")
(set-info :description "{ w | w ends with b }")

(require "./global/theory.k2.ab.sl")

(define-model w_p_b
  (interp-sort Pos ($0 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun succ (match (((tail $0) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_ab
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) ((tail $1) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 tail) true) (($1 $1) true) (($1 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_bb
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) ((tail $1) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 tail) true) (($1 $1) true) (($1 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_aab
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_abb
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_bab
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_bbb
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_aaab
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_a
  (interp-sort Pos ($0 tail))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match (((tail $0) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_aa
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match ((($1 $0) true) ((tail $1) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 tail) true) (($1 $1) true) (($1 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_ba
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) ((tail $1) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 tail) true) (($1 $1) true) (($1 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_aaa
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_aba
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_baa
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_bba
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_aaaa
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_aaba
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_abaa
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_abba
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_baaa
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_b head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ab head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bb head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aab head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abb head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bab head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbb head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaab head tail reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaa head tail reset.S0))))

(check-synth)
