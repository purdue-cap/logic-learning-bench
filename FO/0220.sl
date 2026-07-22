(set-info :author "Chentian Wu")
(set-info :source "examples/fol/paxos_epr.pyv:c4")

(require "theories/paxos_epr-6437ec1f.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
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
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N1
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N2
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_1))
  (interp-fun decision (match (
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
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P1
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N3
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_1 @uc_round_0) true)
    ((@uc_node_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((@uc_node_1 @uc_round_0) true)
    ((@uc_node_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P2
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
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
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N4
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_1))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P3
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_1))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N5
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_0 @uc_round_2) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_1 @uc_round_2) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_1) true)
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P4
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N6
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_0 @uc_round_2) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_1 @uc_round_2) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N7
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_0 @uc_round_2) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_2 @uc_round_1) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_1) true)
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N8
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_2 @uc_round_0) true)
    ((@uc_round_2 @uc_round_1) true)
    ((@uc_round_2 @uc_round_2) true)
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
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N9
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_2) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_1 @uc_round_2) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N10
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_1))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_0 @uc_round_2) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_2 @uc_round_1) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_1) true)
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N11
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_1))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_0 @uc_round_2) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_2 @uc_round_1) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_1) true)
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N12
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_1))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_0 @uc_round_2) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_2 @uc_round_1) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N13
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_1))
  (interp-fun decision (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_0 @uc_round_2) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_2 @uc_round_1) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_round (match (
    ((@uc_node_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_) false)
  )))
  (interp-fun one_b (match (
    ((@uc_node_0 @uc_round_0) true)
    ((@uc_node_0 @uc_round_2) true)
    ((_ _) false)
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
(constraint (with-model P2 (FO.Sem phi (FO.Asp))))
(constraint (with-model P3 (FO.Sem phi (FO.Asp))))
(constraint (with-model P4 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N3 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N4 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N5 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N6 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N7 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N8 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N9 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N10 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N11 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N12 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N13 (FO.Sem phi (FO.Asp)))))

(check-synth)
