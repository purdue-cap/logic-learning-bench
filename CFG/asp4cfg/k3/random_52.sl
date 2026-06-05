; Generated from random_52.txt
; K=3 nonterminals (S0..S2); S0 is the start symbol
; 107 positives + 100 negatives = 207 constraints



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

(define-model w_p_bb
  (define-univ Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_p_bbb
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbab
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
)

(define-model w_p_bbba
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbaab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) ((_) false))))
)

(define-model w_p_bbabb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbaa
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbab
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbba
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbbbb
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) ((_) false))))
)

(define-model w_p_bbaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbabab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_p_bbabba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbbbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbaaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaabab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaabba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbaabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($6) true) ((_) false))))
)

(define-model w_p_bbababb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbabbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbabbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbaaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbaaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbabaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbabab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbabba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbbbaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbbbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaaaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaaaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaaabab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaaabba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaaabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaabaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaababb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaabbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbaabbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaabbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaabbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbababab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbababba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbababbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabbaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbabbaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabbaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabbabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabbbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbabbbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabbbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabbbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbaaaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbaaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbaaaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbaaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbaabaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbaabab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbaabba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbaabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbabaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbabaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbababa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbababb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbabbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbabbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbabbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbabbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbaaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbbbaaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbaaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbaabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbabaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbabab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbabba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbbaaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbbbaab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbbaba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbbabb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbbbaa
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbbbab
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbbbba
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbbbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
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

(define-model w_n_ab
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_ba
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
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

(define-model w_n_abb
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
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

(define-model w_n_aabb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
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

(define-model w_n_bbaba
  (define-univ Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
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

(define-model w_n_aaabbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) (($5) true) ((_) false))))
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

(define-model w_n_aabbbb
  (define-univ Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
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
      (and (= (mode asp) reset.S0)
           (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))))))

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
      (or (and (= (mode asp) reset.S0)
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S0)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))))
     ((cfg.lhs.S1 x y)
      (or (and (= (mode asp) reset.S1)
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S1)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1))))))
     ((cfg.lhs.S2 x y)
      (or (and (= (mode asp) reset.S2)
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S2)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S2))))))
     ((end) false))))

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_bb 0 (size (Pos w_p_bb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbb 0 (size (Pos w_p_bbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbab 0 (size (Pos w_p_bbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbba 0 (size (Pos w_p_bbba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbb 0 (size (Pos w_p_bbbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaab 0 (size (Pos w_p_bbaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabb 0 (size (Pos w_p_bbabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaa 0 (size (Pos w_p_bbbaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbab 0 (size (Pos w_p_bbbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbba 0 (size (Pos w_p_bbbba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbb 0 (size (Pos w_p_bbbbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaaab 0 (size (Pos w_p_bbaaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaabb 0 (size (Pos w_p_bbaabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabab 0 (size (Pos w_p_bbabab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabba 0 (size (Pos w_p_bbabba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbb 0 (size (Pos w_p_bbabbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaaa 0 (size (Pos w_p_bbbaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaab 0 (size (Pos w_p_bbbaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaba 0 (size (Pos w_p_bbbaba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabb 0 (size (Pos w_p_bbbabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbaa 0 (size (Pos w_p_bbbbaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbab 0 (size (Pos w_p_bbbbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbba 0 (size (Pos w_p_bbbbba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbb 0 (size (Pos w_p_bbbbbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaaaab 0 (size (Pos w_p_bbaaaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaaabb 0 (size (Pos w_p_bbaaabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaabab 0 (size (Pos w_p_bbaabab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaabba 0 (size (Pos w_p_bbaabba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaabbb 0 (size (Pos w_p_bbaabbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabaab 0 (size (Pos w_p_bbabaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbababb 0 (size (Pos w_p_bbababb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbaa 0 (size (Pos w_p_bbabbaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbab 0 (size (Pos w_p_bbabbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbba 0 (size (Pos w_p_bbabbba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbbb 0 (size (Pos w_p_bbabbbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaaaa 0 (size (Pos w_p_bbbaaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaaab 0 (size (Pos w_p_bbbaaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaaba 0 (size (Pos w_p_bbbaaba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaabb 0 (size (Pos w_p_bbbaabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabaa 0 (size (Pos w_p_bbbabaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabab 0 (size (Pos w_p_bbbabab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabba 0 (size (Pos w_p_bbbabba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabbb 0 (size (Pos w_p_bbbabbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbaaa 0 (size (Pos w_p_bbbbaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbaab 0 (size (Pos w_p_bbbbaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbaba 0 (size (Pos w_p_bbbbaba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbabb 0 (size (Pos w_p_bbbbabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbaa 0 (size (Pos w_p_bbbbbaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbab 0 (size (Pos w_p_bbbbbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbba 0 (size (Pos w_p_bbbbbba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbbb 0 (size (Pos w_p_bbbbbbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaaaaab 0 (size (Pos w_p_bbaaaaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaaaabb 0 (size (Pos w_p_bbaaaabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaaabab 0 (size (Pos w_p_bbaaabab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaaabba 0 (size (Pos w_p_bbaaabba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaaabbb 0 (size (Pos w_p_bbaaabbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaabaab 0 (size (Pos w_p_bbaabaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaababb 0 (size (Pos w_p_bbaababb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaabbaa 0 (size (Pos w_p_bbaabbaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaabbab 0 (size (Pos w_p_bbaabbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaabbba 0 (size (Pos w_p_bbaabbba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaabbbb 0 (size (Pos w_p_bbaabbbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabaaab 0 (size (Pos w_p_bbabaaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabaabb 0 (size (Pos w_p_bbabaabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbababab 0 (size (Pos w_p_bbababab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbababba 0 (size (Pos w_p_bbababba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbababbb 0 (size (Pos w_p_bbababbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbaaa 0 (size (Pos w_p_bbabbaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbaab 0 (size (Pos w_p_bbabbaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbaba 0 (size (Pos w_p_bbabbaba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbabb 0 (size (Pos w_p_bbabbabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbbaa 0 (size (Pos w_p_bbabbbaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbbab 0 (size (Pos w_p_bbabbbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbbba 0 (size (Pos w_p_bbabbbba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbabbbbb 0 (size (Pos w_p_bbabbbbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaaaaa 0 (size (Pos w_p_bbbaaaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaaaab 0 (size (Pos w_p_bbbaaaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaaaba 0 (size (Pos w_p_bbbaaaba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaaabb 0 (size (Pos w_p_bbbaaabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaabaa 0 (size (Pos w_p_bbbaabaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaabab 0 (size (Pos w_p_bbbaabab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaabba 0 (size (Pos w_p_bbbaabba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaabbb 0 (size (Pos w_p_bbbaabbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabaaa 0 (size (Pos w_p_bbbabaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabaab 0 (size (Pos w_p_bbbabaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbababa 0 (size (Pos w_p_bbbababa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbababb 0 (size (Pos w_p_bbbababb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabbaa 0 (size (Pos w_p_bbbabbaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabbab 0 (size (Pos w_p_bbbabbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabbba 0 (size (Pos w_p_bbbabbba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbabbbb 0 (size (Pos w_p_bbbabbbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbaaaa 0 (size (Pos w_p_bbbbaaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbaaab 0 (size (Pos w_p_bbbbaaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbaaba 0 (size (Pos w_p_bbbbaaba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbaabb 0 (size (Pos w_p_bbbbaabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbabaa 0 (size (Pos w_p_bbbbabaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbabab 0 (size (Pos w_p_bbbbabab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbabba 0 (size (Pos w_p_bbbbabba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbabbb 0 (size (Pos w_p_bbbbabbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbaaa 0 (size (Pos w_p_bbbbbaaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbaab 0 (size (Pos w_p_bbbbbaab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbaba 0 (size (Pos w_p_bbbbbaba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbabb 0 (size (Pos w_p_bbbbbabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbbaa 0 (size (Pos w_p_bbbbbbaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbbab 0 (size (Pos w_p_bbbbbbab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbbba 0 (size (Pos w_p_bbbbbbba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbbbbbb 0 (size (Pos w_p_bbbbbbbb)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a 0 (size (Pos w_n_a)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_b 0 (size (Pos w_n_b)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ab 0 (size (Pos w_n_ab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba 0 (size (Pos w_n_ba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa 0 (size (Pos w_n_aaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab 0 (size (Pos w_n_aab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aba 0 (size (Pos w_n_aba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abb 0 (size (Pos w_n_abb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa 0 (size (Pos w_n_baa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bab 0 (size (Pos w_n_bab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bba 0 (size (Pos w_n_bba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaa 0 (size (Pos w_n_aaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaab 0 (size (Pos w_n_aaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaba 0 (size (Pos w_n_aaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabb 0 (size (Pos w_n_aabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaa 0 (size (Pos w_n_abaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abab 0 (size (Pos w_n_abab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abba 0 (size (Pos w_n_abba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbb 0 (size (Pos w_n_abbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaa 0 (size (Pos w_n_baaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baab 0 (size (Pos w_n_baab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baba 0 (size (Pos w_n_baba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babb 0 (size (Pos w_n_babb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaa 0 (size (Pos w_n_bbaa)) reset.S0))))
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
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbaba 0 (size (Pos w_n_bbaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaaaa 0 (size (Pos w_n_aaaaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaaab 0 (size (Pos w_n_aaaaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaaba 0 (size (Pos w_n_aaaaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaabb 0 (size (Pos w_n_aaaabb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaabaa 0 (size (Pos w_n_aaabaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaabab 0 (size (Pos w_n_aaabab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaabba 0 (size (Pos w_n_aaabba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaabbb 0 (size (Pos w_n_aaabbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabaaa 0 (size (Pos w_n_aabaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabaab 0 (size (Pos w_n_aabaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aababa 0 (size (Pos w_n_aababa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aababb 0 (size (Pos w_n_aababb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabbaa 0 (size (Pos w_n_aabbaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabbab 0 (size (Pos w_n_aabbab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabbba 0 (size (Pos w_n_aabbba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aabbbb 0 (size (Pos w_n_aabbbb)) reset.S0))))
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

(check-synth)