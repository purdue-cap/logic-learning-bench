; Generated from sipser-derived: prefix_b_ge_a
; K=1 nonterminals (S0..S0); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Mirror of Sipser (3e) Problem 2.28(a)")
(set-info :description "{ w | every prefix has #b >= #a }")

(require "./global/theory.k1.ab.sl")

(define-model w_p_b
  (interp-sort Pos ($0 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun succ (match (((tail $0) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_ba
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
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

(define-model w_p_bab
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_bba
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
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

(define-model w_p_baba
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_babb
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) ((_) false))))
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

(define-model w_n_ab
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
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

(define-model w_n_abb
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
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

(define-model w_n_aaba
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_aabb
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(synth-fun g () CFG)

(constraint      (with-model w_p_b (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_ba (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_bb (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_bab (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_bba (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_bbb (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_baba (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_babb (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_a (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aa (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_ab (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aaa (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aab (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aba (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_abb (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_baa (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aaaa (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aaab (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aaba (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aabb (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))

(check-synth)
