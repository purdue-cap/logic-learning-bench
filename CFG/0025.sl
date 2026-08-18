; Generated from sipser-derived: three_as
; K=2 nonterminals (S0..S1); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Sipser (3e) Exercise 2.4(a): at least three 1s (adapted: 1 -> a)")
(set-info :description "{ w | #a(w) >= 3 }")

(require "./global/theory.k2.ab.sl")

(define-model w_p_aaa
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_aaaa
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
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

(define-model w_p_aaba
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_abaa
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_baaa
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_aaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) (($4 $3) true) ((tail $4) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 $4) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 $4) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 $4) true) (($2 tail) true) (($3 $3) true) (($3 $4) true) (($3 tail) true) (($4 $4) true) (($4 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_aaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($4) true) ((_) false))))
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

(define-model w_n_b
  (interp-sort Pos ($0 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
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

(define-model w_n_bb
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) ((tail $1) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 tail) true) (($1 $1) true) (($1 tail) true) ((tail tail) true) ((_ _) false))))
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

(synth-fun g () CFG)

(constraint      (with-model w_p_aaa (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_aaaa (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_aaab (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_aaba (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_abaa (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_baaa (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_aaaaa (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint      (with-model w_p_aaaab (CFG.Sem g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_a (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_b (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aa (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_ab (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_ba (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_bb (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aab (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_aba (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_abb (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_baa (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_bab (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))
(constraint (with-model w_n_bba (CFG.Sem.dual g (CFG.Asp head tail reset.S0))))

(check-synth)
