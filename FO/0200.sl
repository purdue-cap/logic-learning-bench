(set-info :author "Chentian Wu")
(set-info :source "examples/fol/hybrid_reliable_broadcast_cisa.pyv:unforgebility")

(require "theories/hybrid_reliable_broadcast_cisa-4bc7e951.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model N0
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model P1
  (define-univ node (@uc_node_0))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model N1
  (define-univ node (@uc_node_0))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model P2
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model P3
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model P4
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model N2
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model P5
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model N3
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model N4
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model N5
  (define-univ node (@uc_node_0 @uc_node_1 @uc_node_2))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_2) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((@uc_node_2) true)
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model N6
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model N7
  (define-univ node (@uc_node_0 @uc_node_1 @uc_node_2))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_2) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((@uc_node_2) true)
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model N8
  (define-univ node (@uc_node_0 @uc_node_1 @uc_node_2))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_2 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_2 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(define-model P6
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_fa (match (
    ((_) false)
  )))
  (interp-fun member_fc (match (
    ((_) false)
  )))
  (interp-fun member_fi (match (
    ((_) false)
  )))
  (interp-fun member_fs (match (
    ((_) false)
  )))
  (interp-fun rcv_init (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (not (FO.Sem phi (FO.Asp N8))))

(check-synth)
