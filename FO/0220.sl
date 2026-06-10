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

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))
(constraint (not (FO.Sem phi (FO.Asp N7))))
(constraint (not (FO.Sem phi (FO.Asp N8))))
(constraint (not (FO.Sem phi (FO.Asp N9))))
(constraint (not (FO.Sem phi (FO.Asp N10))))
(constraint (not (FO.Sem phi (FO.Asp N11))))
(constraint (not (FO.Sem phi (FO.Asp N12))))
(constraint (not (FO.Sem phi (FO.Asp N13))))

(check-synth)
