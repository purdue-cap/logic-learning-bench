(set-info :author "Chentian Wu")
(set-info :source "examples/fol/paxos_epr.pyv:c0")

(require "theories/paxos_epr-6437ec1f.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((@uc_round_0 @uc_value_0) true)
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
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((@uc_round_0 @uc_value_0) true)
    ((@uc_round_0 @uc_value_1) true)
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
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0 @uc_value_1))
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
  (interp-sort value (@uc_value_0 @uc_value_1))
  (interp-fun none (@uc_round_0))
  (interp-fun decision (match (
    ((@uc_round_1 @uc_value_0) true)
    ((@uc_round_1 @uc_value_1) true)
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
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))

(check-synth)
