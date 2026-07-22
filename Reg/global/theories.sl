(provide RegLan RegLan.Asp RegLan.Sem)
(require "./signatures.sl")

(declare-term-types
 ((RegLan 0))
 (((char.0) (char.1)
   (re.allchar)
   (re.opt RegLan)
   (re.++ RegLan RegLan)
   (re.union RegLan RegLan)
   (re.* RegLan))))

; Canonical algebraic axioms for pruning.
(declare-axiom (= (re.union x y) (re.union y x)))
(declare-axiom (= (re.union (re.union x y) z) (re.union x (re.union y z))))
(declare-axiom (= (re.union x x) x))
(declare-axiom (= (re.++ (re.++ x y) z) (re.++ x (re.++ y z))))

; Regex simplifications from AlphaRegex-style normalization.
(declare-axiom (= (re.* (re.* x)) (re.* x)))
(declare-axiom (= (re.opt (re.opt x)) (re.opt x)))
(declare-axiom (= (re.opt (re.* x)) (re.* x)))
(declare-axiom (= (re.* (re.opt x)) (re.* x)))
(declare-axiom (= (re.++ (re.* x) (re.* x)) (re.* x)))
(declare-axiom (= (re.++ (re.* x) (re.opt x)) (re.* x)))
(declare-axiom (= (re.++ (re.opt x) (re.* x)) (re.* x)))
(declare-axiom (= (re.union (re.opt x) (re.* x)) (re.* x)))
(declare-axiom (= (re.union (re.* x) (re.opt x)) (re.* x)))

; Self-contained (Figure 1) aspect: substring boundaries (i, j) over the finite
; sort Pos. The :where (leq i j) guard keeps the aspect space triangular (as the
; int-range `0 <= i <= j` bound did); the compiler bounds re.++/re.* quantifiers
; via the leq guards inside the body, so no out-of-range sub-aspect is referenced.
(define-aspects RegLan.Asp
  (record (i Pos) (j Pos))
  :where (leq i j))

(define-semantics
  ((RegLan.Sem (r RegLan) (asp RegLan.Asp)))
  ((match r
     ((char.0)
      (and (succ (j asp) (i asp)) (zero (i asp))))
     ((char.1)
      (and (succ (j asp) (i asp)) (one (i asp))))
     ((re.allchar)
      (succ (j asp) (i asp)))
     ((re.opt x)
      (or (= (i asp) (j asp))
          (RegLan.Sem x asp)))
     ((re.++ x y)
      (exists ((k Pos))
        (and (leq (i asp) k) (leq k (j asp))
             (RegLan.Sem x (RegLan.Asp (i asp) k))
             (RegLan.Sem y (RegLan.Asp k (j asp))))))
     ((re.union x y)
      (or (RegLan.Sem x asp) (RegLan.Sem y asp)))
     ((re.* x)
      (or (= (i asp) (j asp))
          (exists ((k Pos))
            (and (leq (i asp) k) (not (= (i asp) k)) (leq k (j asp))
                 (RegLan.Sem x (RegLan.Asp (i asp) k))
                 (RegLan.Sem r (RegLan.Asp k (j asp))))))))))
