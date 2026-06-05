; a^n b^n benchmark: forces the recursive answer S -> aSb | ab.
; pos: ab, aabb  (a^1b^1, a^2b^2)
; neg: aab        (counterexample to S -> ab + arbitrary extension)
;
; The first benchmark anbn-1 admits the trivial S -> ab.  This one adds aabb
; positive, which the trivial answer cannot generate, forcing recursion.



(declare-term-types
 ((CFG 0) (Rhs 0) (Rules 0))
 (
   ((cfg.top.S Rhs Rules))
   ((a) (b) (cfg.++ Rhs Rhs) (cfg.rhs.S))
   ((cfg.lhs.S Rhs Rules) (end))
 )
)

(declare-sort Pos 0)

(declare-fun a (Pos) Bool)
(declare-fun b (Pos) Bool)

; word: ab
(define-model w_ab
  (define-univ Pos ($0 $1))
  (interp-fun a (match ((($0) true) ((_) false))))
  (interp-fun b (match ((($1) true) ((_) false))))
)

; word: aabb
(define-model w_aabb
  (define-univ Pos ($0 $1 $2 $3))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) (($3) true) ((_) false))))
)

; word: aab
(define-model w_aab
  (define-univ Pos ($0 $1 $2))
  (interp-fun a (match ((($0) true) (($1) true) ((_) false))))
  (interp-fun b (match ((($2) true) ((_) false))))
)

(define-finite CFG.Asp
  (record
    (model Model)
    (i Int)
    (j Int)
    (mode (enum base reset.S find.S)))
  :where (and (<= 0 i) (<= i j) (<= j (size (Pos model)))))

(define-semantics
  ((CFG.Sem (n CFG) (asp CFG.Asp)))
  ((match n
     ((cfg.top.S x y)
      (and (= (mode asp) reset.S)
           (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
               (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S))))))))

(define-semantics
  ((Rhs.Sem (n Rhs) (asp CFG.Asp)))
  ((match n
     ((a)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (a (i asp)))
          (and (= (mode asp) reset.S)
               (CFG.Sem (parent n) asp))))
     ((b)
      (or (and (= (mode asp) base)
               (= (j asp) (+ (i asp) 1))
               (b (i asp)))
          (and (= (mode asp) reset.S)
               (CFG.Sem (parent n) asp))))
     ((cfg.++ x y)
      (or (and (= (mode asp) base)
               (exists ((k (int-range (i asp) (j asp))))
                 (and (Rhs.Sem x (CFG.Asp (model asp) (i asp) k base))
                      (Rhs.Sem y (CFG.Asp (model asp) k (j asp) base)))))
          (and (= (mode asp) reset.S)
               (CFG.Sem (parent n) asp))))
     ((cfg.rhs.S)
      (and (= (mode asp) base)
           (CFG.Sem (parent n) (CFG.Asp (model asp) (i asp) (j asp) reset.S)))))))

(define-semantics
  ((Rules.Sem (n Rules) (asp CFG.Asp)))
  ((match n
     ((cfg.lhs.S x y)
      (or (and (= (mode asp) reset.S)
               (CFG.Sem (parent n) asp))
          (and (= (mode asp) find.S)
               (or (Rhs.Sem x (CFG.Asp (model asp) (i asp) (j asp) base))
                   (Rules.Sem y (CFG.Asp (model asp) (i asp) (j asp) find.S))))))
     ((end) false))))

(synth-fun g () CFG)

(constraint      (CFG.Sem g (CFG.Asp w_ab   0 (size (Pos w_ab))   reset.S)))
(constraint      (CFG.Sem g (CFG.Asp w_aabb 0 (size (Pos w_aabb)) reset.S)))
(constraint (not (CFG.Sem g (CFG.Asp w_aab  0 (size (Pos w_aab))  reset.S))))

(check-synth)
