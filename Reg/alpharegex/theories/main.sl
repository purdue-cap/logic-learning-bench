(provide Pos zero one RegLan ReAsp RegLan.Sem)
(declare-sort Pos 0)
(declare-fun zero (Pos) Bool)
(declare-fun one (Pos) Bool)

(declare-term-types
 ((RegLan 0))
 (((char.0) (char.1)
   (re.allchar)
   (re.opt RegLan)
   (re.++ RegLan RegLan)
   (re.union RegLan RegLan)
   (re.* RegLan))))

; Canonical algebraic axioms for pruning during synthesis.
(declare-axiom (= (re.union x y) (re.union y x)))
(declare-axiom (= (re.union (re.union x y) z) (re.union x (re.union y z))))
(declare-axiom (= (re.union x x) x))
(declare-axiom (= (re.++ (re.++ x y) z) (re.++ x (re.++ y z))))

; Useful regex-specific simplifications used by AlphaRegex normalization.
(declare-axiom (= (re.* (re.* x)) (re.* x)))
(declare-axiom (= (re.opt (re.opt x)) (re.opt x)))
(declare-axiom (= (re.opt (re.* x)) (re.* x)))
(declare-axiom (= (re.* (re.opt x)) (re.* x)))
(declare-axiom (= (re.++ (re.* x) (re.* x)) (re.* x)))
(declare-axiom (= (re.++ (re.* x) (re.opt x)) (re.* x)))
(declare-axiom (= (re.++ (re.opt x) (re.* x)) (re.* x)))
(declare-axiom (= (re.union (re.opt x) (re.* x)) (re.* x)))
(declare-axiom (= (re.union (re.* x) (re.opt x)) (re.* x)))

(define-finite ReAsp
  (record (model Model) (i Int) (j Int))
  :where (and (<= 0 i) (<= i j) (<= j (size (Pos model)))))

(define-semantics
  ((RegLan.Sem (r RegLan) (asp ReAsp)))
  ((match r
     ((char.0)
      (and (= (j asp) (+ (i asp) 1)) (zero (i asp))))
     ((char.1)
      (and (= (j asp) (+ (i asp) 1)) (one (i asp))))
     ((re.allchar)
      (= (j asp) (+ (i asp) 1)))
     ((re.opt x)
      (or (= (i asp) (j asp))
          (RegLan.Sem x asp)))
     ((re.++ x y)
      (exists ((k (int-range (i asp) (j asp))))
        (and (RegLan.Sem x (ReAsp (model asp) (i asp) k))
             (RegLan.Sem y (ReAsp (model asp) k (j asp))))))
     ((re.union x y)
      (or (RegLan.Sem x asp) (RegLan.Sem y asp)))
     ((re.* x)
      (or (= (i asp) (j asp))
          (exists ((k (int-range (+ (i asp) 1) (j asp))))
            (and (RegLan.Sem x (ReAsp (model asp) (i asp) k))
                 (RegLan.Sem r (ReAsp (model asp) k (j asp))))))))))
