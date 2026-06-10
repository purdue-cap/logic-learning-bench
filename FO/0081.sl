(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/oopsla17-paxos/multi_paxos_epr.ivy:c2")

(require "theories/multi_paxos_epr-50af9283.sl")

(define-model P0
  (define-univ inst (@uc_inst_0))
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ round (@uc_round_0))
  (define-univ value (@uc_value_0))
  (define-univ votemap (@uc_votemap_0))
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
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((@uc_inst_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_inst_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _ _) false)
  )))
)

(define-model N0
  (define-univ inst (@uc_inst_0))
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ round (@uc_round_0))
  (define-univ value (@uc_value_0))
  (define-univ votemap (@uc_votemap_0))
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

(define-model N1
  (define-univ inst (@uc_inst_0))
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ round (@uc_round_0 @uc_round_1))
  (define-univ value (@uc_value_0))
  (define-univ votemap (@uc_votemap_0))
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
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((@uc_inst_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_inst_0 @uc_round_0 @uc_value_0) true)
    ((@uc_node_0 @uc_inst_0 @uc_round_1 @uc_value_0) true)
    ((_ _ _ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))

(check-synth)
