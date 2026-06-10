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
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_p_bbb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbab
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
)

(define-model w_p_bbba
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbaab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) ((_) false))))
)

(define-model w_p_bbabb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbbbb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) ((_) false))))
)

(define-model w_p_bbaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbabab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_p_bbabba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbbbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbaaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaabab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaabba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbaabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($6) true) ((_) false))))
)

(define-model w_p_bbababb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbabbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbabbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbaaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbabaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbabab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbabba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbbbaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbbbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match ((($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaaaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaaaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaaabab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaaabba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaaabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaabaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaababb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaabbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbaabbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbaabbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbaabbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbababab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbababba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbababbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabbaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbabbaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabbaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabbabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabbbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbabbbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbabbbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbabbbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbaaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_p_bbbaaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbaaaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbaaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbaabaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbaabab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbaabba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbaabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbabaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbabaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbababa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbababb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbabbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbabbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbabbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbabbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbbbaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbaaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbabaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbabab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbabba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbbaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($5) true) (($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_p_bbbbbaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($5) true) (($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbbaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($5) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbbabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($6) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbbbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($6) true) (($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbbbbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($6) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) (($7) true) ((_) false))))
)

(define-model w_p_bbbbbbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match ((($7) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) (($6) true) ((_) false))))
)

(define-model w_p_bbbbbbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5 $6 $7))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) (($6) true) (($7) true) ((_) false))))
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

(define-model w_n_bba
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_aaaa
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_aaab
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
)

(define-model w_n_aaba
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_n_aabb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_n_abaa
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_abab
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
)

(define-model w_n_abba
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_n_abbb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_baaa
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_baab
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) ((_) false))))
)

(define-model w_n_baba
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_n_babb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_bbaa
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_aaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_aaaab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($4) true) ((_) false))))
)

(define-model w_n_aaaba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
)

(define-model w_n_aaabb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) ((_) false))))
)

(define-model w_n_aabaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_n_aabab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($4) true) ((_) false))))
)

(define-model w_n_aabba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_n_aabbb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_abaaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_abaab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($4) true) ((_) false))))
)

(define-model w_n_ababa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
)

(define-model w_n_ababb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_abbaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_n_abbab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_abbba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_abbbb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_baaaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_baaab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($4) true) ((_) false))))
)

(define-model w_n_baaba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) ((_) false))))
)

(define-model w_n_baabb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_babaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_n_babab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_babba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_babbb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_bbaaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_n_bbaba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
)

(define-model w_n_aaaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match (((_) false))))
)

(define-model w_n_aaaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($5) true) ((_) false))))
)

(define-model w_n_aaaaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($4) true) ((_) false))))
)

(define-model w_n_aaaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($4) true) (($5) true) ((_) false))))
)

(define-model w_n_aaabaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($3) true) ((_) false))))
)

(define-model w_n_aaabab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($5) true) ((_) false))))
)

(define-model w_n_aaabba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) ((_) false))))
)

(define-model w_n_aaabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_aabaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-model w_n_aabaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($5) true) ((_) false))))
)

(define-model w_n_aababa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($4) true) ((_) false))))
)

(define-model w_n_aababb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_aabbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_n_aabbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_aabbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_aabbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_abaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_n_abaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($5) true) ((_) false))))
)

(define-model w_n_abaaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($4) true) ((_) false))))
)

(define-model w_n_abaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_ababaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
)

(define-model w_n_ababab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_ababba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_ababbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_abbaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) ((_) false))))
)

(define-model w_n_abbaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_n_abbaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_abbabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_abbbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_abbbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_abbbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_abbbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_baaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_n_baaaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($5) true) ((_) false))))
)

(define-model w_n_baaaba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($4) true) ((_) false))))
)

(define-model w_n_baaabb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_baabaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) ((_) false))))
)

(define-model w_n_baabab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_baabba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_baabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_babaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) ((_) false))))
)

(define-model w_n_babaab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($5) true) ((_) false))))
)

(define-model w_n_bababa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($3) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_bababb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_babbaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_babbab
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($5) true) ((_) false))))
)

(define-model w_n_babbba
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_babbbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_n_bbaaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($2) true) (($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-aspects CFG.Asp
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