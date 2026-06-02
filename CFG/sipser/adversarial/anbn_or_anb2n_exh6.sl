; Generated from adversarial: anbn_or_anb2n_exh6 (exhaustive |w|<=6)
; K=3 nonterminals (S0..S2); S0 is the start symbol
; 5 positives + 121 negatives = 126 constraints

(set-logic ALL)

(declare-term-types
 ((CFG 0) (Rhs 0) (Rules 0))
 (
   ((cfg.top.S0 Rhs Rules))
   ((a) (b) (cfg.++ Rhs Rhs) (cfg.rhs.S0) (cfg.rhs.S1) (cfg.rhs.S2))
   ((cfg.lhs.S0 Rhs Rules) (cfg.lhs.S1 Rhs Rules) (cfg.lhs.S2 Rhs Rules) (end))
 )
)

(declare-sort Pos 0)
(declare-fun a (Pos) Bool)
(declare-fun b (Pos) Bool)

(define-model w_p_ab
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_p_abb
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_p_aabb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_p_aaabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_aabbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_a
  (define-univ Pos ($0))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_b
  (define-univ Pos ($0))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_aa
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_ba
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_bb
  (define-univ Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_aaa
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_aab
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_n_aba
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_baa
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_bab
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_n_bba
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_bbb
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_aaaa
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_aaab
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
)

(define-model w_n_aaba
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_n_abaa
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_abab
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
)

(define-model w_n_abba
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_n_abbb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_baaa
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_baab
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) ((_) false))))
)

(define-model w_n_baba
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_n_babb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_bbaa
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_bbab
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
)

(define-model w_n_bbba
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_bbbb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_aaaaa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_aaaab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($4) true) ((_) false))))
)

(define-model w_n_aaaba
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
)

(define-model w_n_aaabb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) ((_) false))))
)

(define-model w_n_aabaa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_n_aabab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($4) true) ((_) false))))
)

(define-model w_n_aabba
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_n_aabbb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_abaaa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_abaab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($4) true) ((_) false))))
)

(define-model w_n_ababa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
)

(define-model w_n_ababb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_abbaa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_n_abbab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_abbba
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_abbbb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_baaaa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_baaab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($4) true) ((_) false))))
)

(define-model w_n_baaba
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) ((_) false))))
)

(define-model w_n_baabb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_babaa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_n_babab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_babba
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_babbb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_bbaaa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_bbaab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) ((_) false))))
)

(define-model w_n_bbaba
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
)

(define-model w_n_bbabb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_bbbaa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_bbbab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_bbbba
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_bbbbb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_aaaaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_aaaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($5) true) ((_) false))))
)

(define-model w_n_aaaaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($4) true) ((_) false))))
)

(define-model w_n_aaaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($4) true) (($5) true) ((_) false))))
)

(define-model w_n_aaabaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
)

(define-model w_n_aaabab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($5) true) ((_) false))))
)

(define-model w_n_aaabba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) ((_) false))))
)

(define-model w_n_aabaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_n_aabaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($5) true) ((_) false))))
)

(define-model w_n_aababa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($4) true) ((_) false))))
)

(define-model w_n_aababb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_aabbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_n_aabbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_aabbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_abaaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_abaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($5) true) ((_) false))))
)

(define-model w_n_abaaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($4) true) ((_) false))))
)

(define-model w_n_abaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_ababaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
)

(define-model w_n_ababab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_ababba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_ababbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_abbaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_n_abbaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_n_abbaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_abbabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_abbbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_abbbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_abbbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_abbbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_baaaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_baaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($5) true) ((_) false))))
)

(define-model w_n_baaaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($4) true) ((_) false))))
)

(define-model w_n_baaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_baabaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) ((_) false))))
)

(define-model w_n_baabab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_baabba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_baabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_babaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_n_babaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_n_bababa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_bababb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_babbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_babbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_babbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_babbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_bbaaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_bbaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) ((_) false))))
)

(define-model w_n_bbaaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) ((_) false))))
)

(define-model w_n_bbaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_bbabaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
)

(define-model w_n_bbabab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_bbabba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_bbabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_bbbaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_bbbaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_n_bbbaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_bbbabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_bbbbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_bbbbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_bbbbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_bbbbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-finite CFG.Asp
  (record
    (model Model)
    (i Int)
    (j Int)
    (mode (enum base reset.S0 reset.S1 reset.S2 find.S0 find.S1 find.S2)))
  :where (and (<= 0 i) (<= i j) (<= j (size (Pos model)))))

(define-semantics
  ((CFG.Sem (n CFG) (asp CFG.Asp)))
  ((match n
     ((cfg.top.S0 x y)
      (or
          (and (= (mode asp) reset.S0)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))
          (and (= (mode asp) reset.S1)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1)))
          (and (= (mode asp) reset.S2)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S2)))
      )))))

(define-semantics
  ((Rhs.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (a (i asp)))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1) (= (mode asp) reset.S2))
               (CFG.Sem (parent n) asp))))
     ((b)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (b (i asp)))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1) (= (mode asp) reset.S2))
               (CFG.Sem (parent n) asp))))
     ((cfg.++ x y)
      (or (and (= (mode asp) base)
               (exists ((k (int-range (i asp) (j asp))))
                 (and (Rhs.Sem x (CFG.Asp (model asp) (i asp) k base))
                      (Rhs.Sem y (CFG.Asp (model asp) k (j asp) base)))))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1) (= (mode asp) reset.S2))
               (CFG.Sem (parent n) asp))))
     ((cfg.rhs.S0)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S0))))
     ((cfg.rhs.S1)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S1))))
     ((cfg.rhs.S2)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S2)))))))

(define-semantics
  ((Rules.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S0 x y)
      (or
          (and (= (mode asp) reset.S0)
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S0)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))
          (and (= (mode asp) find.S1)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1)))
          (and (= (mode asp) find.S2)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S2)))
      ))
     ((cfg.lhs.S1 x y)
      (or
          (and (= (mode asp) reset.S1)
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S1)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1))))
          (and (= (mode asp) find.S0)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0)))
          (and (= (mode asp) find.S2)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S2)))
      ))
     ((cfg.lhs.S2 x y)
      (or
          (and (= (mode asp) reset.S2)
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S2)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S2))))
          (and (= (mode asp) find.S0)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0)))
          (and (= (mode asp) find.S1)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1)))
      ))
     ((end) false))))

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_ab 0 (size (Pos w_p_ab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abb 0 (size (Pos w_p_abb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aabb 0 (size (Pos w_p_aabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaabbb 0 (size (Pos w_p_aaabbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aabbbb 0 (size (Pos w_p_aabbbb)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a 0 (size (Pos w_n_a)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_b 0 (size (Pos w_n_b)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba 0 (size (Pos w_n_ba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bb 0 (size (Pos w_n_bb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa 0 (size (Pos w_n_aaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab 0 (size (Pos w_n_aab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aba 0 (size (Pos w_n_aba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa 0 (size (Pos w_n_baa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bab 0 (size (Pos w_n_bab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bba 0 (size (Pos w_n_bba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbb 0 (size (Pos w_n_bbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaa 0 (size (Pos w_n_aaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaab 0 (size (Pos w_n_aaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaba 0 (size (Pos w_n_aaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaa 0 (size (Pos w_n_abaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abab 0 (size (Pos w_n_abab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abba 0 (size (Pos w_n_abba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbb 0 (size (Pos w_n_abbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaa 0 (size (Pos w_n_baaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baab 0 (size (Pos w_n_baab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baba 0 (size (Pos w_n_baba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babb 0 (size (Pos w_n_babb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaa 0 (size (Pos w_n_bbaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbab 0 (size (Pos w_n_bbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbba 0 (size (Pos w_n_bbba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbb 0 (size (Pos w_n_bbbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaaa 0 (size (Pos w_n_aaaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaab 0 (size (Pos w_n_aaaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaba 0 (size (Pos w_n_aaaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaabb 0 (size (Pos w_n_aaabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabaa 0 (size (Pos w_n_aabaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabab 0 (size (Pos w_n_aabab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabba 0 (size (Pos w_n_aabba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabbb 0 (size (Pos w_n_aabbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaaa 0 (size (Pos w_n_abaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaab 0 (size (Pos w_n_abaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ababa 0 (size (Pos w_n_ababa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ababb 0 (size (Pos w_n_ababb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbaa 0 (size (Pos w_n_abbaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbab 0 (size (Pos w_n_abbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbba 0 (size (Pos w_n_abbba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbbb 0 (size (Pos w_n_abbbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaaa 0 (size (Pos w_n_baaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaab 0 (size (Pos w_n_baaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaba 0 (size (Pos w_n_baaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baabb 0 (size (Pos w_n_baabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babaa 0 (size (Pos w_n_babaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babab 0 (size (Pos w_n_babab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babba 0 (size (Pos w_n_babba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babbb 0 (size (Pos w_n_babbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaaa 0 (size (Pos w_n_bbaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaab 0 (size (Pos w_n_bbaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaba 0 (size (Pos w_n_bbaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbabb 0 (size (Pos w_n_bbabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbaa 0 (size (Pos w_n_bbbaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbab 0 (size (Pos w_n_bbbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbba 0 (size (Pos w_n_bbbba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbbb 0 (size (Pos w_n_bbbbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaaaa 0 (size (Pos w_n_aaaaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaaab 0 (size (Pos w_n_aaaaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaaba 0 (size (Pos w_n_aaaaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaabb 0 (size (Pos w_n_aaaabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaabaa 0 (size (Pos w_n_aaabaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaabab 0 (size (Pos w_n_aaabab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaabba 0 (size (Pos w_n_aaabba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabaaa 0 (size (Pos w_n_aabaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabaab 0 (size (Pos w_n_aabaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aababa 0 (size (Pos w_n_aababa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aababb 0 (size (Pos w_n_aababb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabbaa 0 (size (Pos w_n_aabbaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabbab 0 (size (Pos w_n_aabbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabbba 0 (size (Pos w_n_aabbba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaaaa 0 (size (Pos w_n_abaaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaaab 0 (size (Pos w_n_abaaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaaba 0 (size (Pos w_n_abaaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaabb 0 (size (Pos w_n_abaabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ababaa 0 (size (Pos w_n_ababaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ababab 0 (size (Pos w_n_ababab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ababba 0 (size (Pos w_n_ababba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ababbb 0 (size (Pos w_n_ababbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbaaa 0 (size (Pos w_n_abbaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbaab 0 (size (Pos w_n_abbaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbaba 0 (size (Pos w_n_abbaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbabb 0 (size (Pos w_n_abbabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbbaa 0 (size (Pos w_n_abbbaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbbab 0 (size (Pos w_n_abbbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbbba 0 (size (Pos w_n_abbbba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbbbb 0 (size (Pos w_n_abbbbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaaaa 0 (size (Pos w_n_baaaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaaab 0 (size (Pos w_n_baaaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaaba 0 (size (Pos w_n_baaaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaabb 0 (size (Pos w_n_baaabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baabaa 0 (size (Pos w_n_baabaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baabab 0 (size (Pos w_n_baabab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baabba 0 (size (Pos w_n_baabba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baabbb 0 (size (Pos w_n_baabbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babaaa 0 (size (Pos w_n_babaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babaab 0 (size (Pos w_n_babaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bababa 0 (size (Pos w_n_bababa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bababb 0 (size (Pos w_n_bababb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babbaa 0 (size (Pos w_n_babbaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babbab 0 (size (Pos w_n_babbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babbba 0 (size (Pos w_n_babbba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babbbb 0 (size (Pos w_n_babbbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaaaa 0 (size (Pos w_n_bbaaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaaab 0 (size (Pos w_n_bbaaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaaba 0 (size (Pos w_n_bbaaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaabb 0 (size (Pos w_n_bbaabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbabaa 0 (size (Pos w_n_bbabaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbabab 0 (size (Pos w_n_bbabab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbabba 0 (size (Pos w_n_bbabba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbabbb 0 (size (Pos w_n_bbabbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbaaa 0 (size (Pos w_n_bbbaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbaab 0 (size (Pos w_n_bbbaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbaba 0 (size (Pos w_n_bbbaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbabb 0 (size (Pos w_n_bbbabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbbaa 0 (size (Pos w_n_bbbbaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbbab 0 (size (Pos w_n_bbbbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbbba 0 (size (Pos w_n_bbbbba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbbbbb 0 (size (Pos w_n_bbbbbb)) reset.S0))))

(check-synth)