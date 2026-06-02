(provide FO.Asp Term.0.quorum Term.0.quorum.Sem Term.0.round Term.0.round.Sem FO0 FO.Sem fol.0.true fol.0.false fol.0.not fol.0.and fol.0.or fol.0.eq.quorum fol.0.eq.round fol.0.atom.irrelevant_msg fol.0.atom.le fol.0.atom.one_a fol.0.term.quorum_of_round fol.0.term.master_minrel fol.0.term.none)
(require "../../global/signatures/vertical_paxos_epr_unverified_optimization-2bc0d415.sl")

(declare-term-types
 ((FO0 0) (Term.0.quorum 0) (Term.0.round 0))
 (((fol.0.true)
   (fol.0.false)
   (fol.0.not FO0)
   (fol.0.and FO0 FO0)
   (fol.0.or FO0 FO0)
   (fol.0.eq.quorum Term.0.quorum Term.0.quorum)
   (fol.0.eq.round Term.0.round Term.0.round)
   (fol.0.atom.irrelevant_msg Term.0.round)
   (fol.0.atom.le Term.0.round Term.0.round)
   (fol.0.atom.one_a Term.0.round Term.0.round))
  ((fol.0.term.quorum_of_round Term.0.round))
  ((fol.0.term.master_minrel)
   (fol.0.term.none))))

(define-finite FO.Asp (record (model Model)))

(define-semantics
  ((Term.0.quorum.Sem (term Term.0.quorum) (asp FO.Asp)))
  :returns quorum
  ((match term
     ((fol.0.term.quorum_of_round a0) (quorum_of_round (Term.0.round.Sem a0 asp)))
  )))

(define-semantics
  ((Term.0.round.Sem (term Term.0.round) (asp FO.Asp)))
  :returns round
  ((match term
     ((fol.0.term.master_minrel) master_minrel)
     ((fol.0.term.none) none)
  )))

(define-semantics
  ((FO.Sem (phi FO0) (asp FO.Asp)))
  ((match phi
     ((fol.0.true) true)
     ((fol.0.false) false)
     ((fol.0.not p) (not (FO.Sem p asp)))
     ((fol.0.and p q) (and (FO.Sem p asp) (FO.Sem q asp)))
     ((fol.0.or p q) (or (FO.Sem p asp) (FO.Sem q asp)))
     ((fol.0.eq.quorum lhs rhs)
      (= (Term.0.quorum.Sem lhs asp) (Term.0.quorum.Sem rhs asp)))
     ((fol.0.eq.round lhs rhs)
      (= (Term.0.round.Sem lhs asp) (Term.0.round.Sem rhs asp)))
     ((fol.0.atom.irrelevant_msg a0) (irrelevant_msg (Term.0.round.Sem a0 asp)))
     ((fol.0.atom.le a0 a1) (le (Term.0.round.Sem a0 asp) (Term.0.round.Sem a1 asp)))
     ((fol.0.atom.one_a a0 a1) (one_a (Term.0.round.Sem a0 asp) (Term.0.round.Sem a1 asp)))
  )))
