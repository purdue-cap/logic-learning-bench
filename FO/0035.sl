(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/fol-thresholds/byz_paxos.ivy:conj9")

(require "theories/byz_paxos-30198e33.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort quorum_w (@uc_quorum_w_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((_) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_w (match (
    ((@uc_node_0 @uc_quorum_w_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun prepare (match (
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((@uc_node_0 @uc_round_0 @uc_node_0) true)
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort quorum_w (@uc_quorum_w_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((_) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_w (match (
    ((@uc_node_0 @uc_quorum_w_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun prepare (match (
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((@uc_node_0 @uc_round_0 @uc_node_0) true)
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N1
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort quorum_w (@uc_quorum_w_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((_) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((@uc_node_1 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_w (match (
    ((@uc_node_0 @uc_quorum_w_0) true)
    ((@uc_node_1 @uc_quorum_w_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_1 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun prepare (match (
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((@uc_node_0 @uc_round_0 @uc_node_0) true)
    ((@uc_node_0 @uc_round_0 @uc_node_1) true)
    ((@uc_node_1 @uc_round_0 @uc_node_0) true)
    ((@uc_node_1 @uc_round_0 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N2
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort quorum_w (@uc_quorum_w_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((_) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_w (match (
    ((@uc_node_0 @uc_quorum_w_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun prepare (match (
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((@uc_node_0 @uc_round_0 @uc_node_0) true)
    ((@uc_node_0 @uc_round_1 @uc_node_0) true)
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P1
  (interp-sort node (@uc_node_0))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort quorum_w (@uc_quorum_w_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((_) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_w (match (
    ((@uc_node_0 @uc_quorum_w_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun prepare (match (
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N3
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum_c (@uc_quorum_c_0))
  (interp-sort quorum_w (@uc_quorum_w_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member_b (match (
    ((_) false)
  )))
  (interp-fun member_c (match (
    ((@uc_node_0 @uc_quorum_c_0) true)
    ((@uc_node_1 @uc_quorum_c_0) true)
    ((_ _) false)
  )))
  (interp-fun member_w (match (
    ((@uc_node_0 @uc_quorum_w_0) true)
    ((@uc_node_1 @uc_quorum_w_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_1 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun prepare (match (
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((@uc_node_0 @uc_round_0 @uc_node_1) true)
    ((@uc_node_1 @uc_round_0 @uc_node_0) true)
    ((@uc_node_1 @uc_round_0 @uc_node_1) true)
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N3 (FO.Sem phi (FO.Asp)))))

(check-synth)
