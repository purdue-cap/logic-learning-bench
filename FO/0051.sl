(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/oopsla17-paxos/fast_paxos_epr.ivy:c1")

(require "theories/fast_paxos_epr-723563de.sl")

(define-model P0
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((@uc_round_0) true)
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
    ((@uc_round_0) true)
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

(define-model N1
  (interp-sort c_quorum (@uc_c_quorum_0))
  (interp-sort f_quorum (@uc_f_quorum_0))
  (interp-sort node (@uc_node_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun any_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_1) true)
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
    ((_ _) false)
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

(check-synth)
