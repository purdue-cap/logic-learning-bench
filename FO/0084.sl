(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/oopsla17-paxos/multi_paxos_epr.ivy:c5")

(require "theories/multi_paxos_epr-50af9283.sl")

(define-model P0
  (interp-sort inst (@uc_inst_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-sort votemap (@uc_votemap_0))
  (interp-fun none (@uc_round_0))
  (interp-fun maxr (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_round_0)
    ((_ _) @uc_round_0)
  )))
  (interp-fun maxv (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun active (match (
    ((_) false)
  )))
  (interp-fun decision (match (
    ((_ _ _ _) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b_msg (match (
    ((@uc_node_0 @uc_round_0 @uc_votemap_0) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_inst_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _ _) false)
  )))
)

(define-model N0
  (interp-sort inst (@uc_inst_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-sort votemap (@uc_votemap_0))
  (interp-fun none (@uc_round_0))
  (interp-fun maxr (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_round_1)
    ((_ _) @uc_round_0)
  )))
  (interp-fun maxv (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun active (match (
    ((_) false)
  )))
  (interp-fun decision (match (
    ((_ _ _ _) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b_msg (match (
    ((@uc_node_0 @uc_round_0 @uc_votemap_0) true)
    ((@uc_node_0 @uc_round_1 @uc_votemap_0) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _ _) false)
  )))
)

(define-model N1
  (interp-sort inst (@uc_inst_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-sort votemap (@uc_votemap_0))
  (interp-fun none (@uc_round_0))
  (interp-fun maxr (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_round_1)
    ((_ _) @uc_round_0)
  )))
  (interp-fun maxv (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun active (match (
    ((_) false)
  )))
  (interp-fun decision (match (
    ((_ _ _ _) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b_msg (match (
    ((@uc_node_0 @uc_round_0 @uc_votemap_0) true)
    ((@uc_node_0 @uc_round_1 @uc_votemap_0) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _ _) false)
  )))
)

(define-model P1
  (interp-sort inst (@uc_inst_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-sort votemap (@uc_votemap_0))
  (interp-fun none (@uc_round_0))
  (interp-fun maxr (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_round_0)
    ((_ _) @uc_round_0)
  )))
  (interp-fun maxv (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun active (match (
    ((_) false)
  )))
  (interp-fun decision (match (
    ((_ _ _ _) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b_msg (match (
    ((@uc_node_0 @uc_round_0 @uc_votemap_0) true)
    ((@uc_node_0 @uc_round_1 @uc_votemap_0) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_inst_0 @uc_round_0 @uc_value_0) true)
    ((@uc_node_0 @uc_inst_0 @uc_round_1 @uc_value_0) true)
    ((_ _ _ _) false)
  )))
)

(define-model N2
  (interp-sort inst (@uc_inst_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-sort votemap (@uc_votemap_0 @uc_votemap_1))
  (interp-fun none (@uc_round_0))
  (interp-fun maxr (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_round_0)
    ((@uc_votemap_1 @uc_inst_0) @uc_round_1)
    ((_ _) @uc_round_0)
  )))
  (interp-fun maxv (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_value_0)
    ((@uc_votemap_1 @uc_inst_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun active (match (
    ((_) false)
  )))
  (interp-fun decision (match (
    ((_ _ _ _) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b_msg (match (
    ((@uc_node_0 @uc_round_0 @uc_votemap_0) true)
    ((@uc_node_0 @uc_round_0 @uc_votemap_1) true)
    ((@uc_node_0 @uc_round_1 @uc_votemap_0) true)
    ((@uc_node_0 @uc_round_1 @uc_votemap_1) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _ _) false)
  )))
)

(define-model N3
  (interp-sort inst (@uc_inst_0 @uc_inst_1))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-sort votemap (@uc_votemap_0))
  (interp-fun none (@uc_round_0))
  (interp-fun maxr (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_round_1)
    ((@uc_votemap_0 @uc_inst_1) @uc_round_0)
    ((_ _) @uc_round_0)
  )))
  (interp-fun maxv (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_value_0)
    ((@uc_votemap_0 @uc_inst_1) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun active (match (
    ((_) false)
  )))
  (interp-fun decision (match (
    ((_ _ _ _) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b_msg (match (
    ((@uc_node_0 @uc_round_0 @uc_votemap_0) true)
    ((@uc_node_0 @uc_round_1 @uc_votemap_0) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _ _) false)
  )))
)

(define-model P2
  (interp-sort inst (@uc_inst_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-sort votemap (@uc_votemap_0))
  (interp-fun none (@uc_round_0))
  (interp-fun maxr (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_round_1)
    ((_ _) @uc_round_0)
  )))
  (interp-fun maxv (match (
    ((@uc_votemap_0 @uc_inst_0) @uc_value_0)
    ((_ _) @uc_value_0)
  )))
  (interp-fun active (match (
    ((_) false)
  )))
  (interp-fun decision (match (
    ((_ _ _ _) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b_msg (match (
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_inst_0 @uc_round_0 @uc_value_0) true)
    ((@uc_node_0 @uc_inst_0 @uc_round_1 @uc_value_0) true)
    ((_ _ _ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (with-model P2 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N3 (FO.Sem phi (FO.Asp)))))

(check-synth)
