; Generated from adversarial: anbn_plus_exh5 (exhaustive |w|<=5)
; K=2 nonterminals (S0..S1); S0 is the start symbol
; 3 positives + 59 negatives = 62 constraints

(set-logic ALL)

(declare-term-types
 ((CFG 0) (Rhs 0) (Rules 0))
 (
   ((cfg.top.S0 Rhs Rules))
   ((a) (b) (cfg.++ Rhs Rhs) (cfg.rhs.S0) (cfg.rhs.S1))
   ((cfg.lhs.S0 Rhs Rules) (cfg.lhs.S1 Rhs Rules) (end))
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

(define-model w_p_aabb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_p_abab
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($1) true) (($3) true) ((_) false))))
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

(define-finite CFG.Asp
  (record
    (model Model)
    (i Int)
    (j Int)
    (mode (enum base reset.S0 reset.S1 find.S0 find.S1)))
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
      )))))

(define-semantics
  ((Rhs.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (a (i asp)))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
               (CFG.Sem (parent n) asp))))
     ((b)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (b (i asp)))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
               (CFG.Sem (parent n) asp))))
     ((cfg.++ x y)
      (or (and (= (mode asp) base)
               (exists ((k (int-range (i asp) (j asp))))
                 (and (Rhs.Sem x (CFG.Asp (model asp) (i asp) k base))
                      (Rhs.Sem y (CFG.Asp (model asp) k (j asp) base)))))
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
               (CFG.Sem (parent n) asp))))
     ((cfg.rhs.S0)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S0))))
     ((cfg.rhs.S1)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S1)))))))

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
      ))
     ((end) false))))

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_p_ab 0 (size (Pos w_p_ab)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aabb 0 (size (Pos w_p_aabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_abab 0 (size (Pos w_p_abab)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a 0 (size (Pos w_n_a)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_b 0 (size (Pos w_n_b)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_ba 0 (size (Pos w_n_ba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bb 0 (size (Pos w_n_bb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaa 0 (size (Pos w_n_aaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aab 0 (size (Pos w_n_aab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aba 0 (size (Pos w_n_aba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abb 0 (size (Pos w_n_abb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baa 0 (size (Pos w_n_baa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bab 0 (size (Pos w_n_bab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bba 0 (size (Pos w_n_bba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_bbb 0 (size (Pos w_n_bbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaaa 0 (size (Pos w_n_aaaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaab 0 (size (Pos w_n_aaab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aaba 0 (size (Pos w_n_aaba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abaa 0 (size (Pos w_n_abaa)) reset.S0))))
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

(check-synth)