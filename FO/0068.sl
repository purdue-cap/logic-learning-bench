(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/oopsla17-paxos/flexible_paxos_epr.ivy:c1")

(require "theories/flexible_paxos_epr-64da5722.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (define-univ quorum_1 (@uc_quorum_1_0))
  (define-univ quorum_2 (@uc_quorum_2_0))
  (define-univ round (@uc_round_0))
  (define-univ value (@uc_value_0))
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
  (interp-fun member_1 (match (
    ((@uc_node_0 @uc_quorum_1_0) true)
    ((_ _) false)
  )))
  (interp-fun member_2 (match (
    ((@uc_node_0 @uc_quorum_2_0) true)
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
  (define-univ node (@uc_node_0))
  (define-univ quorum_1 (@uc_quorum_1_0))
  (define-univ quorum_2 (@uc_quorum_2_0))
  (define-univ round (@uc_round_0))
  (define-univ value (@uc_value_0))
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
  (interp-fun member_1 (match (
    ((@uc_node_0 @uc_quorum_1_0) true)
    ((_ _) false)
  )))
  (interp-fun member_2 (match (
    ((@uc_node_0 @uc_quorum_2_0) true)
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
  (define-univ node (@uc_node_0))
  (define-univ quorum_1 (@uc_quorum_1_0))
  (define-univ quorum_2 (@uc_quorum_2_0))
  (define-univ round (@uc_round_0 @uc_round_1))
  (define-univ value (@uc_value_0))
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
  (interp-fun member_1 (match (
    ((@uc_node_0 @uc_quorum_1_0) true)
    ((_ _) false)
  )))
  (interp-fun member_2 (match (
    ((@uc_node_0 @uc_quorum_2_0) true)
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

(define-model N2
  (define-univ node (@uc_node_0))
  (define-univ quorum_1 (@uc_quorum_1_0))
  (define-univ quorum_2 (@uc_quorum_2_0))
  (define-univ round (@uc_round_0))
  (define-univ value (@uc_value_0 @uc_value_1))
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
  (interp-fun member_1 (match (
    ((@uc_node_0 @uc_quorum_1_0) true)
    ((_ _) false)
  )))
  (interp-fun member_2 (match (
    ((@uc_node_0 @uc_quorum_2_0) true)
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
    ((@uc_round_0 @uc_value_1) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((@uc_node_0 @uc_round_0 @uc_value_1) true)
    ((_ _ _) false)
  )))
)

(define-model P1
  (define-univ node (@uc_node_0))
  (define-univ quorum_1 (@uc_quorum_1_0))
  (define-univ quorum_2 (@uc_quorum_2_0))
  (define-univ round (@uc_round_0))
  (define-univ value (@uc_value_0))
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
  (interp-fun member_1 (match (
    ((@uc_node_0 @uc_quorum_1_0) true)
    ((_ _) false)
  )))
  (interp-fun member_2 (match (
    ((@uc_node_0 @uc_quorum_2_0) true)
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
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))

(check-synth)
