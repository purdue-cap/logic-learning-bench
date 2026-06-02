(provide FO.Asp Term.0.abp.index_t Term.0.abp.index_t.Sem Term.0.abp.value Term.0.abp.value.Sem FO0 FO.Sem fol.0.true fol.0.false fol.0.not fol.0.and fol.0.or fol.0.eq.abp.index_t fol.0.eq.abp.value fol.0.atom.abp.ack_received fol.0.atom.abp.ack_sent fol.0.atom.abp.data_received fol.0.atom.abp.data_sent fol.0.atom.abp.index.le fol.0.atom.abp.receiver_bit fol.0.atom.abp.receiver_scheduled fol.0.atom.abp.sender_bit fol.0.atom.abp.sender_scheduled fol.0.term.abp.index.zero fol.0.term.abp.receiver_i fol.0.term.abp.sender_gen_i fol.0.term.abp.sender_i fol.0.term.abp.tp1.sk0 fol.0.term.abp.bot fol.0.term.abp.receiver_array fol.0.term.abp.sender_array)
(require "../../global/signatures/alternating_bit_protocol-232f7bb5.sl")

(declare-term-types
 ((FO0 0) (Term.0.abp.index_t 0) (Term.0.abp.value 0))
 (((fol.0.true)
   (fol.0.false)
   (fol.0.not FO0)
   (fol.0.and FO0 FO0)
   (fol.0.or FO0 FO0)
   (fol.0.eq.abp.index_t Term.0.abp.index_t Term.0.abp.index_t)
   (fol.0.eq.abp.value Term.0.abp.value Term.0.abp.value)
   (fol.0.atom.abp.ack_received )
   (fol.0.atom.abp.ack_sent )
   (fol.0.atom.abp.data_received )
   (fol.0.atom.abp.data_sent )
   (fol.0.atom.abp.index.le Term.0.abp.index_t Term.0.abp.index_t)
   (fol.0.atom.abp.receiver_bit )
   (fol.0.atom.abp.receiver_scheduled )
   (fol.0.atom.abp.sender_bit )
   (fol.0.atom.abp.sender_scheduled ))
  ((fol.0.term.abp.index.zero)
   (fol.0.term.abp.receiver_i)
   (fol.0.term.abp.sender_gen_i)
   (fol.0.term.abp.sender_i)
   (fol.0.term.abp.tp1.sk0))
  ((fol.0.term.abp.bot)
   (fol.0.term.abp.receiver_array Term.0.abp.index_t)
   (fol.0.term.abp.sender_array Term.0.abp.index_t))))

(define-finite FO.Asp (record (model Model)))

(define-semantics
  ((Term.0.abp.index_t.Sem (term Term.0.abp.index_t) (asp FO.Asp)))
  :returns abp.index_t
  ((match term
     ((fol.0.term.abp.index.zero) abp.index.zero)
     ((fol.0.term.abp.receiver_i) abp.receiver_i)
     ((fol.0.term.abp.sender_gen_i) abp.sender_gen_i)
     ((fol.0.term.abp.sender_i) abp.sender_i)
     ((fol.0.term.abp.tp1.sk0) abp.tp1.sk0)
  )))

(define-semantics
  ((Term.0.abp.value.Sem (term Term.0.abp.value) (asp FO.Asp)))
  :returns abp.value
  ((match term
     ((fol.0.term.abp.bot) abp.bot)
     ((fol.0.term.abp.receiver_array a0) (abp.receiver_array (Term.0.abp.index_t.Sem a0 asp)))
     ((fol.0.term.abp.sender_array a0) (abp.sender_array (Term.0.abp.index_t.Sem a0 asp)))
  )))

(define-semantics
  ((FO.Sem (phi FO0) (asp FO.Asp)))
  ((match phi
     ((fol.0.true) true)
     ((fol.0.false) false)
     ((fol.0.not p) (not (FO.Sem p asp)))
     ((fol.0.and p q) (and (FO.Sem p asp) (FO.Sem q asp)))
     ((fol.0.or p q) (or (FO.Sem p asp) (FO.Sem q asp)))
     ((fol.0.eq.abp.index_t lhs rhs)
      (= (Term.0.abp.index_t.Sem lhs asp) (Term.0.abp.index_t.Sem rhs asp)))
     ((fol.0.eq.abp.value lhs rhs)
      (= (Term.0.abp.value.Sem lhs asp) (Term.0.abp.value.Sem rhs asp)))
     ((fol.0.atom.abp.ack_received ) (abp.ack_received))
     ((fol.0.atom.abp.ack_sent ) (abp.ack_sent))
     ((fol.0.atom.abp.data_received ) (abp.data_received))
     ((fol.0.atom.abp.data_sent ) (abp.data_sent))
     ((fol.0.atom.abp.index.le a0 a1) (abp.index.le (Term.0.abp.index_t.Sem a0 asp) (Term.0.abp.index_t.Sem a1 asp)))
     ((fol.0.atom.abp.receiver_bit ) (abp.receiver_bit))
     ((fol.0.atom.abp.receiver_scheduled ) (abp.receiver_scheduled))
     ((fol.0.atom.abp.sender_bit ) (abp.sender_bit))
     ((fol.0.atom.abp.sender_scheduled ) (abp.sender_scheduled))
  )))
