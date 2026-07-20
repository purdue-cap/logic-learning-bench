; Generated from sipser-derived: an_lt_bm
; K=2 nonterminals (S0..S1); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Formal language theory; Sipser-style CFG separation")
(set-info :description "{ a^i b^j | i < j } over a* b*")

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

(define-model w_p_bb
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) ((tail $1) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 tail) true) (($1 $1) true) (($1 tail) true) ((tail tail) true) ((_ _) false))))
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

(define-model w_p_bbb
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_abbb
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_bbbb
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_aabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 tail))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) (($4 $3) true) ((tail $4) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 $4) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 $4) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 $4) true) (($2 tail) true) (($3 $3) true) (($3 $4) true) (($3 tail) true) (($4 $4) true) (($4 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_abbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 tail))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) (($4 $3) true) ((tail $4) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 $4) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 $4) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 $4) true) (($2 tail) true) (($3 $3) true) (($3 $4) true) (($3 tail) true) (($4 $4) true) (($4 tail) true) ((tail tail) true) ((_ _) false))))
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

(define-model w_n_ab
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
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

(define-model w_n_aab
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
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

(define-model w_n_bab
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
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

(define-model w_n_aaab
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_b head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bb head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abb head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbb head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abbb head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbb head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aabbb head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abbbb head tail reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ab head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bab head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaab head tail reset.S0))))

(define-model w_n_aabb
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabb head tail reset.S0))))

(check-synth)
