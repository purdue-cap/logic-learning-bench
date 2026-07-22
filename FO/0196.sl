(set-info :author "Chentian Wu")
(set-info :source "examples/fol/hybrid_reliable_broadcast_cisa.pyv:c3")

(require "theories/hybrid_reliable_broadcast_cisa-4bc7e951.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
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
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
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
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(define-model N1
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
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
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
)

(define-model N2
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
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
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
)

(define-model N3
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
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
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
)

(define-model N4
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
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
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
)

(define-model P1
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
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

(define-model P2
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
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
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(define-model N5
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
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
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(define-model P3
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-fun accept (match (
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
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (with-model P2 (FO.Sem phi (FO.Asp))))
(constraint (with-model P3 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N3 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N4 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N5 (FO.Sem phi (FO.Asp)))))

(check-synth)
