(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/oopsla17-paxos/vertical_paxos_epr_unverified_optimization.ivy:c6")

(require "theories/vertical_paxos_epr_unverified_optimization-d27f8fa3.sl")

(define-model P0
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N0
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N1
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N2
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P1
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P2
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P3
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N3
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N4
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N5
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N6
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N7
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N8
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N9
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N10
  (interp-sort config (@uc_config_0 @uc_config_1))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_1 @uc_round_0) true)
    ((@uc_config_1 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N11
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_2))
  (interp-fun none (@uc_round_2))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N12
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N13
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N14
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N15
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N16
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_2))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P4
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N17
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P5
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N18
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N19
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P6
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P7
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N20
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N21
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N22
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N23
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_2))
  (interp-fun none (@uc_round_2))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N24
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N25
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_2))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_1 @uc_round_0) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_1 @uc_round_2) true)
    ((@uc_round_2 @uc_round_0) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N26
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N27
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N28
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N29
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_2))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P8
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N30
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N31
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N32
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N33
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N34
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N35
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N36
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_1) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P9
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N37
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_2))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P10
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N38
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_1) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N39
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N40
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_2))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model P11
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N41
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_0 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((_) false)
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N42
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_1))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N43
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N44
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_1))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_1) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N45
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_2))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
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
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((@uc_config_0 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N46
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_2))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_1 @uc_config_0) true)
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_2 @uc_round_0) true)
    ((@uc_round_2 @uc_round_1) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N47
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_2 @uc_round_0) true)
    ((@uc_round_2 @uc_round_1) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_0) true)
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _ _) false)
  )))
)

(define-model N48
  (interp-sort config (@uc_config_0))
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort round (@uc_round_0 @uc_round_1 @uc_round_2))
  (interp-sort value (@uc_value_0))
  (interp-fun master_minrel (@uc_round_0))
  (interp-fun none (@uc_round_0))
  (interp-fun quorum_of_round (match (
    ((@uc_round_0) @uc_quorum_0)
    ((@uc_round_1) @uc_quorum_0)
    ((@uc_round_2) @uc_quorum_0)
    ((_) @uc_quorum_0)
  )))
  (interp-fun configure_round_msg (match (
    ((@uc_round_2 @uc_config_0) true)
    ((_ _) false)
  )))
  (interp-fun decision (match (
    ((_ _ _) false)
  )))
  (interp-fun irrelevant_msg (match (
    ((@uc_round_0) true)
    ((@uc_round_2) true)
    ((_) false)
  )))
  (interp-fun joined_round (match (
    ((_ _) false)
  )))
  (interp-fun le (match (
    ((@uc_round_0 @uc_round_0) true)
    ((@uc_round_0 @uc_round_1) true)
    ((@uc_round_1 @uc_round_1) true)
    ((@uc_round_2 @uc_round_0) true)
    ((@uc_round_2 @uc_round_1) true)
    ((@uc_round_2 @uc_round_2) true)
    ((_ _) false)
  )))
  (interp-fun left_rnd (match (
    ((_ _) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun minrelof (match (
    ((@uc_config_0 @uc_round_1) true)
    ((_ _) false)
  )))
  (interp-fun one_a (match (
    ((_ _) false)
  )))
  (interp-fun one_b_max_vote (match (
    ((_ _ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun quorumin (match (
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
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (FO.Sem phi (FO.Asp P7)))
(constraint (FO.Sem phi (FO.Asp P8)))
(constraint (FO.Sem phi (FO.Asp P9)))
(constraint (FO.Sem phi (FO.Asp P10)))
(constraint (FO.Sem phi (FO.Asp P11)))
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
(constraint (not (FO.Sem phi (FO.Asp N14))))
(constraint (not (FO.Sem phi (FO.Asp N15))))
(constraint (not (FO.Sem phi (FO.Asp N16))))
(constraint (not (FO.Sem phi (FO.Asp N17))))
(constraint (not (FO.Sem phi (FO.Asp N18))))
(constraint (not (FO.Sem phi (FO.Asp N19))))
(constraint (not (FO.Sem phi (FO.Asp N20))))
(constraint (not (FO.Sem phi (FO.Asp N21))))
(constraint (not (FO.Sem phi (FO.Asp N22))))
(constraint (not (FO.Sem phi (FO.Asp N23))))
(constraint (not (FO.Sem phi (FO.Asp N24))))
(constraint (not (FO.Sem phi (FO.Asp N25))))
(constraint (not (FO.Sem phi (FO.Asp N26))))
(constraint (not (FO.Sem phi (FO.Asp N27))))
(constraint (not (FO.Sem phi (FO.Asp N28))))
(constraint (not (FO.Sem phi (FO.Asp N29))))
(constraint (not (FO.Sem phi (FO.Asp N30))))
(constraint (not (FO.Sem phi (FO.Asp N31))))
(constraint (not (FO.Sem phi (FO.Asp N32))))
(constraint (not (FO.Sem phi (FO.Asp N33))))
(constraint (not (FO.Sem phi (FO.Asp N34))))
(constraint (not (FO.Sem phi (FO.Asp N35))))
(constraint (not (FO.Sem phi (FO.Asp N36))))
(constraint (not (FO.Sem phi (FO.Asp N37))))
(constraint (not (FO.Sem phi (FO.Asp N38))))
(constraint (not (FO.Sem phi (FO.Asp N39))))
(constraint (not (FO.Sem phi (FO.Asp N40))))
(constraint (not (FO.Sem phi (FO.Asp N41))))
(constraint (not (FO.Sem phi (FO.Asp N42))))
(constraint (not (FO.Sem phi (FO.Asp N43))))
(constraint (not (FO.Sem phi (FO.Asp N44))))
(constraint (not (FO.Sem phi (FO.Asp N45))))
(constraint (not (FO.Sem phi (FO.Asp N46))))
(constraint (not (FO.Sem phi (FO.Asp N47))))
(constraint (not (FO.Sem phi (FO.Asp N48))))

(check-synth)
