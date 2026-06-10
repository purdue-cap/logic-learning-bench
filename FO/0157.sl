(set-info :author "Chentian Wu")
(set-info :source "examples/fol/bosco_3t_safety.pyv:c4")

(require "theories/bosco_3t_safety-def425b4.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort value (@uc_value_0))
  (interp-fun dec (match (
    ((_ _) false)
  )))
  (interp-fun done (match (
    ((_) false)
  )))
  (interp-fun input (match (
    ((@uc_node_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_f (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun und_cons (match (
    ((@uc_node_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun und_cons_dec (match (
    ((_) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
  (interp-fun dec (match (
    ((_ _) false)
  )))
  (interp-fun done (match (
    ((_) false)
  )))
  (interp-fun input (match (
    ((_ _) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_f (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun und_cons (match (
    ((@uc_node_0 @uc_value_0) true)
    ((@uc_node_0 @uc_value_1) true)
    ((_ _) false)
  )))
  (interp-fun und_cons_dec (match (
    ((_) false)
  )))
)

(define-model N1
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
  (interp-fun dec (match (
    ((_ _) false)
  )))
  (interp-fun done (match (
    ((_) false)
  )))
  (interp-fun input (match (
    ((@uc_node_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_f (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun und_cons (match (
    ((@uc_node_0 @uc_value_0) true)
    ((@uc_node_0 @uc_value_1) true)
    ((_ _) false)
  )))
  (interp-fun und_cons_dec (match (
    ((_) false)
  )))
)

(define-model N2
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
  (interp-fun dec (match (
    ((_ _) false)
  )))
  (interp-fun done (match (
    ((_) false)
  )))
  (interp-fun input (match (
    ((@uc_node_0 @uc_value_0) true)
    ((@uc_node_0 @uc_value_1) true)
    ((_ _) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((@uc_node_1 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((@uc_node_1 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_1 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_f (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun und_cons (match (
    ((@uc_node_0 @uc_value_0) true)
    ((@uc_node_0 @uc_value_1) true)
    ((@uc_node_1 @uc_value_0) true)
    ((@uc_node_1 @uc_value_1) true)
    ((_ _) false)
  )))
  (interp-fun und_cons_dec (match (
    ((_) false)
  )))
)

(define-model P1
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
  (interp-fun dec (match (
    ((_ _) false)
  )))
  (interp-fun done (match (
    ((_) false)
  )))
  (interp-fun input (match (
    ((_ _) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_f (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun und_cons (match (
    ((_ _) false)
  )))
  (interp-fun und_cons_dec (match (
    ((_) false)
  )))
)

(define-model P2
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_a (@uc_quorum_a_0))
  (interp-sort quorum_b (@uc_quorum_b_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort value (@uc_value_0))
  (interp-fun dec (match (
    ((_ _) false)
  )))
  (interp-fun done (match (
    ((_) false)
  )))
  (interp-fun input (match (
    ((_ _) false)
  )))
  (interp-fun member_a (match (
    ((@uc_node_0 @uc_quorum_a_0) true)
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((@uc_node_0 @uc_quorum_b_0) true)
    ((_ _) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_f (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun sent_msg_proj (match (
    ((_ _) false)
  )))
  (interp-fun und_cons (match (
    ((@uc_node_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun und_cons_dec (match (
    ((_) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))

(check-synth)
