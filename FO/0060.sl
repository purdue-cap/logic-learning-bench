(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/oopsla17-paxos/fast_paxos_epr.ivy:c4")

(require "theories/fast_paxos_epr-723563de.sl")

(define-model P0
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((_) false)
  )))
  (interp-fun c_member (match (
    ((@uc_node_0 @uc_c_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun f_member (match (
    ((@uc_node_0 @uc_f_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun fast (match (
    ((@uc_round_0) true)
    ((_) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((@uc_round_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N0
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((_) false)
  )))
  (interp-fun c_member (match (
    ((@uc_node_0 @uc_c_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun f_member (match (
    ((@uc_node_0 @uc_f_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun fast (match (
    ((_) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N1
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((_) false)
  )))
  (interp-fun c_member (match (
    ((@uc_node_0 @uc_c_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun f_member (match (
    ((@uc_node_0 @uc_f_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun fast (match (
    ((@uc_round_0) true)
    ((_) false)
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
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((@uc_node_0 @uc_round_1 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N2
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((_) false)
  )))
  (interp-fun c_member (match (
    ((@uc_node_0 @uc_c_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun f_member (match (
    ((@uc_node_0 @uc_f_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun fast (match (
    ((_) false)
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
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((@uc_round_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((@uc_node_0 @uc_round_1 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model P1
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((_) false)
  )))
  (interp-fun c_member (match (
    ((@uc_node_0 @uc_c_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun f_member (match (
    ((@uc_node_0 @uc_f_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun fast (match (
    ((_) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((@uc_round_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N3
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((_) false)
  )))
  (interp-fun c_member (match (
    ((@uc_node_0 @uc_c_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun f_member (match (
    ((@uc_node_0 @uc_f_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun fast (match (
    ((_) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((@uc_round_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((@uc_node_0 @uc_round_0 @uc_value_1) true)
    ((_ _ _) false)
  )))
)

(define-model P2
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((_) false)
  )))
  (interp-fun c_member (match (
    ((@uc_node_0 @uc_c_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun f_member (match (
    ((@uc_node_0 @uc_f_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun fast (match (
    ((@uc_round_0) true)
    ((_) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model P3
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((_) false)
  )))
  (interp-fun c_member (match (
    ((@uc_node_0 @uc_c_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun f_member (match (
    ((@uc_node_0 @uc_f_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun fast (match (
    ((_) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))

(check-synth)
