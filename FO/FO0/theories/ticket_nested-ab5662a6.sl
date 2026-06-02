(provide FO.Asp Term.0.ticket_protocol.thread Term.0.ticket_protocol.thread.Sem Term.0.ticket_protocol.ticket Term.0.ticket_protocol.ticket.Sem FO0 FO.Sem fol.0.true fol.0.false fol.0.not fol.0.and fol.0.or fol.0.eq.ticket_protocol.thread fol.0.eq.ticket_protocol.ticket fol.0.atom.ticket_protocol.c fol.0.atom.ticket_protocol.le fol.0.atom.ticket_protocol.m fol.0.atom.ticket_protocol.pc1 fol.0.atom.ticket_protocol.pc2 fol.0.atom.ticket_protocol.pc3 fol.0.atom.ticket_protocol.scheduled fol.0.term.ticket_protocol.tp1.sk0 fol.0.term.ticket_protocol.tp1.sk1 fol.0.term.ticket_protocol.next_ticket fol.0.term.ticket_protocol.service fol.0.term.ticket_protocol.zero)
(require "../../global/signatures/ticket_nested-ab5662a6.sl")

(declare-term-types
 ((FO0 0) (Term.0.ticket_protocol.thread 0) (Term.0.ticket_protocol.ticket 0))
 (((fol.0.true)
   (fol.0.false)
   (fol.0.not FO0)
   (fol.0.and FO0 FO0)
   (fol.0.or FO0 FO0)
   (fol.0.eq.ticket_protocol.thread Term.0.ticket_protocol.thread Term.0.ticket_protocol.thread)
   (fol.0.eq.ticket_protocol.ticket Term.0.ticket_protocol.ticket Term.0.ticket_protocol.ticket)
   (fol.0.atom.ticket_protocol.c Term.0.ticket_protocol.thread Term.0.ticket_protocol.ticket)
   (fol.0.atom.ticket_protocol.le Term.0.ticket_protocol.ticket Term.0.ticket_protocol.ticket)
   (fol.0.atom.ticket_protocol.m Term.0.ticket_protocol.thread Term.0.ticket_protocol.ticket)
   (fol.0.atom.ticket_protocol.pc1 Term.0.ticket_protocol.thread)
   (fol.0.atom.ticket_protocol.pc2 Term.0.ticket_protocol.thread)
   (fol.0.atom.ticket_protocol.pc3 Term.0.ticket_protocol.thread)
   (fol.0.atom.ticket_protocol.scheduled Term.0.ticket_protocol.thread))
  ((fol.0.term.ticket_protocol.tp1.sk0)
   (fol.0.term.ticket_protocol.tp1.sk1))
  ((fol.0.term.ticket_protocol.next_ticket)
   (fol.0.term.ticket_protocol.service)
   (fol.0.term.ticket_protocol.zero))))

(define-finite FO.Asp (record (model Model)))

(define-semantics
  ((Term.0.ticket_protocol.thread.Sem (term Term.0.ticket_protocol.thread) (asp FO.Asp)))
  :returns ticket_protocol.thread
  ((match term
     ((fol.0.term.ticket_protocol.tp1.sk0) ticket_protocol.tp1.sk0)
     ((fol.0.term.ticket_protocol.tp1.sk1) ticket_protocol.tp1.sk1)
  )))

(define-semantics
  ((Term.0.ticket_protocol.ticket.Sem (term Term.0.ticket_protocol.ticket) (asp FO.Asp)))
  :returns ticket_protocol.ticket
  ((match term
     ((fol.0.term.ticket_protocol.next_ticket) ticket_protocol.next_ticket)
     ((fol.0.term.ticket_protocol.service) ticket_protocol.service)
     ((fol.0.term.ticket_protocol.zero) ticket_protocol.zero)
  )))

(define-semantics
  ((FO.Sem (phi FO0) (asp FO.Asp)))
  ((match phi
     ((fol.0.true) true)
     ((fol.0.false) false)
     ((fol.0.not p) (not (FO.Sem p asp)))
     ((fol.0.and p q) (and (FO.Sem p asp) (FO.Sem q asp)))
     ((fol.0.or p q) (or (FO.Sem p asp) (FO.Sem q asp)))
     ((fol.0.eq.ticket_protocol.thread lhs rhs)
      (= (Term.0.ticket_protocol.thread.Sem lhs asp) (Term.0.ticket_protocol.thread.Sem rhs asp)))
     ((fol.0.eq.ticket_protocol.ticket lhs rhs)
      (= (Term.0.ticket_protocol.ticket.Sem lhs asp) (Term.0.ticket_protocol.ticket.Sem rhs asp)))
     ((fol.0.atom.ticket_protocol.c a0 a1) (ticket_protocol.c (Term.0.ticket_protocol.thread.Sem a0 asp) (Term.0.ticket_protocol.ticket.Sem a1 asp)))
     ((fol.0.atom.ticket_protocol.le a0 a1) (ticket_protocol.le (Term.0.ticket_protocol.ticket.Sem a0 asp) (Term.0.ticket_protocol.ticket.Sem a1 asp)))
     ((fol.0.atom.ticket_protocol.m a0 a1) (ticket_protocol.m (Term.0.ticket_protocol.thread.Sem a0 asp) (Term.0.ticket_protocol.ticket.Sem a1 asp)))
     ((fol.0.atom.ticket_protocol.pc1 a0) (ticket_protocol.pc1 (Term.0.ticket_protocol.thread.Sem a0 asp)))
     ((fol.0.atom.ticket_protocol.pc2 a0) (ticket_protocol.pc2 (Term.0.ticket_protocol.thread.Sem a0 asp)))
     ((fol.0.atom.ticket_protocol.pc3 a0) (ticket_protocol.pc3 (Term.0.ticket_protocol.thread.Sem a0 asp)))
     ((fol.0.atom.ticket_protocol.scheduled a0) (ticket_protocol.scheduled (Term.0.ticket_protocol.thread.Sem a0 asp)))
  )))
