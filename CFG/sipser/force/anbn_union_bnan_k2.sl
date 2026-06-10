; Generated from force-multint-union k=2: { a^n b^n | n>=1 } U { b^n a^n | n>=1 }, pos<=^6 neg<=^5
; K=2 nonterminals (S0..S1); S0 is the start symbol
; 6 positives + 58 negatives = 64 constraints
(set-info :author "Chentian Wu")
(set-info :source "Forcing case for multi-nonterminal CFG learning: the union {a^n b^n} U {b^n a^n}; cf. Sipser (3e) Sec. 2.1 (union of CFLs) and {0^n 1^n} U {1^n 0^n}")
(set-info :description "{ a^n b^n | n>=1 } U { b^n a^n | n>=1 }")



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
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

(define-model w_p_ba
  (interp-sort Pos ($0 $1))
  (interp-fun a (match ((($1) true) ((_) false))))
  (interp-fun b (match ((($0) true) ((_) false))))
)

(define-model w_p_aabb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

(define-model w_p_bbaa
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
)

(define-model w_p_aaabbb
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($0) true) (($1) true) (($2) true) ((_) false))))
  (interp-fun b (match ((($3) true) (($4) true) (($5) true) ((_) false))))
)

(define-model w_p_bbbaaa
  (interp-sort Pos ($0 $1 $2 $3 $4 $5))
  (interp-fun a (match ((($3) true) (($4) true) (($5) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
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

(define-model w_n_bb
  (interp-sort Pos ($0 $1))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) ((_) false))))
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

(define-model w_n_bbb
  (interp-sort Pos ($0 $1 $2))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
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

(define-model w_n_bbab
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
)

(define-model w_n_bbba
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_bbbb
  (interp-sort Pos ($0 $1 $2 $3))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
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

(define-model w_n_bbaab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($4) true) ((_) false))))
)

(define-model w_n_bbaba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) ((_) false))))
)

(define-model w_n_bbabb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($2) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($3) true) (($4) true) ((_) false))))
)

(define-model w_n_bbbaa
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($3) true) (($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) ((_) false))))
)

(define-model w_n_bbbab
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($3) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($4) true) ((_) false))))
)

(define-model w_n_bbbba
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match ((($4) true) ((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) ((_) false))))
)

(define-model w_n_bbbbb
  (interp-sort Pos ($0 $1 $2 $3 $4))
  (interp-fun a (match (((_) false))))
  (interp-fun b (match ((($0) true) (($1) true) (($2) true) (($3) true) (($4) true) ((_) false))))
)

(define-aspects CFG.Asp
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
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S0)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S0))))
          (and (= (mode asp) find.S1)
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S1)))
      ))
     ((cfg.lhs.S1 x y)
      (or
          (and (or (= (mode asp) reset.S0) (= (mode asp) reset.S1))
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
(constraint      (CFG.Sem g (CFG.Asp w_p_ba 0 (size (Pos w_p_ba)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aabb 0 (size (Pos w_p_aabb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbaa 0 (size (Pos w_p_bbaa)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_aaabbb 0 (size (Pos w_p_aaabbb)) reset.S0)))
(constraint      (CFG.Sem g (CFG.Asp w_p_bbbaaa 0 (size (Pos w_p_bbbaaa)) reset.S0)))
(constraint (not (CFG.Sem g (CFG.Asp w_n_a 0 (size (Pos w_n_a)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_b 0 (size (Pos w_n_b)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_aa 0 (size (Pos w_n_aa)) reset.S0))))
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
(constraint (not (CFG.Sem g (CFG.Asp w_n_abab 0 (size (Pos w_n_abab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abba 0 (size (Pos w_n_abba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_abbb 0 (size (Pos w_n_abbb)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baaa 0 (size (Pos w_n_baaa)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baab 0 (size (Pos w_n_baab)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_baba 0 (size (Pos w_n_baba)) reset.S0))))
(constraint (not (CFG.Sem g (CFG.Asp w_n_babb 0 (size (Pos w_n_babb)) reset.S0))))
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