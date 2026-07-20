; Generated from sipser-derived: not_ww
; K=3 nonterminals (S0..S2); S0 is the start symbol
; 8 positives + 12 negatives = 20 constraints
(set-info :author "Chentian Wu")
(set-info :source "Complement of { w w } (a classic context-free language); cf. Sipser (3e) Ch. 2")
(set-info :description "{ w | w is not of the form xx for any x }")

(require "./global/theory.k3.ab.sl")

(define-model w_p_a
  (interp-sort Pos ($0 tail))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match (((tail $0) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

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

(define-model w_p_ba
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) ((tail $1) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 tail) true) (($1 $1) true) (($1 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_p_aaa
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) ((tail $2) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 tail) true) (($2 $2) true) (($2 tail) true) ((tail tail) true) ((_ _) false))))
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

(define-model w_p_aba
  (interp-sort Pos ($0 $1 $2 tail))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
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

(define-model w_n_aa
  (interp-sort Pos ($0 $1 tail))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
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

(define-model w_n_aaaa
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_abab
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_baba
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_bbbb
  (interp-sort Pos ($0 $1 $2 $3 tail))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) ((tail $3) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 tail) true) (($3 $3) true) (($3 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_aaaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match (((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) (($4 $3) true) (($5 $4) true) ((tail $5) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 $4) true) (($0 $5) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 $4) true) (($1 $5) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 $4) true) (($2 $5) true) (($2 tail) true) (($3 $3) true) (($3 $4) true) (($3 $5) true) (($3 tail) true) (($4 $4) true) (($4 $5) true) (($4 tail) true) (($5 $5) true) (($5 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_aabaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 tail))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) (($4 $3) true) (($5 $4) true) ((tail $5) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 $4) true) (($0 $5) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 $4) true) (($1 $5) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 $4) true) (($2 $5) true) (($2 tail) true) (($3 $3) true) (($3 $4) true) (($3 $5) true) (($3 tail) true) (($4 $4) true) (($4 $5) true) (($4 tail) true) (($5 $5) true) (($5 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_abaaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 tail))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($4) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) (($4 $3) true) (($5 $4) true) ((tail $5) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 $4) true) (($0 $5) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 $4) true) (($1 $5) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 $4) true) (($2 $5) true) (($2 tail) true) (($3 $3) true) (($3 $4) true) (($3 $5) true) (($3 tail) true) (($4 $4) true) (($4 $5) true) (($4 tail) true) (($5 $5) true) (($5 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_abbabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 tail))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) (($4 $3) true) (($5 $4) true) ((tail $5) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 $4) true) (($0 $5) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 $4) true) (($1 $5) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 $4) true) (($2 $5) true) (($2 tail) true) (($3 $3) true) (($3 $4) true) (($3 $5) true) (($3 tail) true) (($4 $4) true) (($4 $5) true) (($4 tail) true) (($5 $5) true) (($5 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_baabaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 tail))
  (interp-fun a (match ((($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) (($4 $3) true) (($5 $4) true) ((tail $5) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 $4) true) (($0 $5) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 $4) true) (($1 $5) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 $4) true) (($2 $5) true) (($2 tail) true) (($3 $3) true) (($3 $4) true) (($3 $5) true) (($3 tail) true) (($4 $4) true) (($4 $5) true) (($4 tail) true) (($5 $5) true) (($5 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(define-model w_n_babbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 tail))
  (interp-fun a (match ((($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun succ (match ((($1 $0) true) (($2 $1) true) (($3 $2) true) (($4 $3) true) (($5 $4) true) ((tail $5) true) ((_ _) false))))
  (interp-fun leq (match ((($0 $0) true) (($0 $1) true) (($0 $2) true) (($0 $3) true) (($0 $4) true) (($0 $5) true) (($0 tail) true) (($1 $1) true) (($1 $2) true) (($1 $3) true) (($1 $4) true) (($1 $5) true) (($1 tail) true) (($2 $2) true) (($2 $3) true) (($2 $4) true) (($2 $5) true) (($2 tail) true) (($3 $3) true) (($3 $4) true) (($3 $5) true) (($3 tail) true) (($4 $4) true) (($4 $5) true) (($4 tail) true) (($5 $5) true) (($5 tail) true) ((tail tail) true) ((_ _) false))))
  (interp-fun head ($0))
  (interp-fun tail (tail))
)

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_a head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_b head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ab head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_ba head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaa head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aab head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aba head tail reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abb head tail reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bb head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abab head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbb head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaaaa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabaab head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaaba head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbabb head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baabaa head tail reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babbab head tail reset.S0))))

(check-synth)
