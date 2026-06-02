(provide FO.Asp Term.0.epoch Term.0.epoch.Sem FO0 FO.Sem fol.0.true fol.0.false fol.0.not fol.0.and fol.0.or fol.0.eq.epoch fol.0.atom.le fol.0.term.zero)
(require "../../global/signatures/toy_lock_inv-4805fc37.sl")

(declare-term-types
 ((FO0 0) (Term.0.epoch 0))
 (((fol.0.true)
   (fol.0.false)
   (fol.0.not FO0)
   (fol.0.and FO0 FO0)
   (fol.0.or FO0 FO0)
   (fol.0.eq.epoch Term.0.epoch Term.0.epoch)
   (fol.0.atom.le Term.0.epoch Term.0.epoch))
  ((fol.0.term.zero))))

(define-finite FO.Asp (record (model Model)))

(define-semantics
  ((Term.0.epoch.Sem (term Term.0.epoch) (asp FO.Asp)))
  :returns epoch
  ((match term
     ((fol.0.term.zero) zero)
  )))

(define-semantics
  ((FO.Sem (phi FO0) (asp FO.Asp)))
  ((match phi
     ((fol.0.true) true)
     ((fol.0.false) false)
     ((fol.0.not p) (not (FO.Sem p asp)))
     ((fol.0.and p q) (and (FO.Sem p asp) (FO.Sem q asp)))
     ((fol.0.or p q) (or (FO.Sem p asp) (FO.Sem q asp)))
     ((fol.0.eq.epoch lhs rhs)
      (= (Term.0.epoch.Sem lhs asp) (Term.0.epoch.Sem rhs asp)))
     ((fol.0.atom.le a0 a1) (le (Term.0.epoch.Sem a0 asp) (Term.0.epoch.Sem a1 asp)))
  )))
