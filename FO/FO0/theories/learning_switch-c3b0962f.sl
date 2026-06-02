(provide FO.Asp FO0 FO.Sem fol.0.true fol.0.false fol.0.not fol.0.and fol.0.or)
(require "../../global/signatures/learning_switch-c3b0962f.sl")

(declare-term-types
 ((FO0 0))
 (((fol.0.true)
   (fol.0.false)
   (fol.0.not FO0)
   (fol.0.and FO0 FO0)
   (fol.0.or FO0 FO0))))

(define-finite FO.Asp (record (model Model)))

(define-semantics
  ((FO.Sem (phi FO0) (asp FO.Asp)))
  ((match phi
     ((fol.0.true) true)
     ((fol.0.false) false)
     ((fol.0.not p) (not (FO.Sem p asp)))
     ((fol.0.and p q) (and (FO.Sem p asp) (FO.Sem q asp)))
     ((fol.0.or p q) (or (FO.Sem p asp) (FO.Sem q asp)))
  )))
