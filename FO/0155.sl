(set-info :author "Chentian Wu")
(set-info :source "examples/fol/bosco_3t_safety.pyv:c2")

(require "theories/bosco_3t_safety-def425b4.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ value (@uc_value_0))
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
    ((@uc_node_0 @uc_node_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_0 @uc_node_0 @uc_value_0) true)
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

(define-model N0
  (define-univ node (@uc_node_0))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ value (@uc_value_0))
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
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_0 @uc_node_0 @uc_value_0) true)
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

(define-model N1
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ value (@uc_value_0))
  (interp-fun dec (match (
    ((_ _) false)
  )))
  (interp-fun done (match (
    ((_) false)
  )))
  (interp-fun input (match (
    ((@uc_node_0 @uc_value_0) true)
    ((@uc_node_1 @uc_value_0) true)
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
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((@uc_node_1 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_f (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((@uc_node_1 @uc_node_1 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_0 @uc_node_0 @uc_value_0) true)
    ((@uc_node_0 @uc_node_1 @uc_value_0) true)
    ((@uc_node_1 @uc_node_0 @uc_value_0) true)
    ((@uc_node_1 @uc_node_1 @uc_value_0) true)
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

(define-model N2
  (define-univ node (@uc_node_0))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ value (@uc_value_0 @uc_value_1))
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
    ((@uc_node_0 @uc_node_0 @uc_value_1) true)
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_0 @uc_node_0 @uc_value_0) true)
    ((@uc_node_0 @uc_node_0 @uc_value_1) true)
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

(define-model N3
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_a (@uc_quorum_a_0))
  (define-univ quorum_b (@uc_quorum_b_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ value (@uc_value_0))
  (interp-fun dec (match (
    ((_ _) false)
  )))
  (interp-fun done (match (
    ((_) false)
  )))
  (interp-fun input (match (
    ((@uc_node_0 @uc_value_0) true)
    ((@uc_node_1 @uc_value_0) true)
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
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((@uc_node_1 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_f (match (
    ((_) false)
  )))
  (interp-fun rcv_msg (match (
    ((@uc_node_0 @uc_node_0 @uc_value_0) true)
    ((@uc_node_1 @uc_node_1 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun rcv_msg_proj (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun sent_msg (match (
    ((@uc_node_0 @uc_node_0 @uc_value_0) true)
    ((@uc_node_0 @uc_node_1 @uc_value_0) true)
    ((@uc_node_1 @uc_node_0 @uc_value_0) true)
    ((@uc_node_1 @uc_node_1 @uc_value_0) true)
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

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))

(check-synth)
