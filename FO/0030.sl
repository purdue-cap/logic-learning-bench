(set-info :author "Chentian Wu")
(set-info :source "good-ivy-examples/fol-thresholds/byz_paxos.ivy:conj11")

(require "theories/byz_paxos-30198e33.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ quorum_w (@uc_quorum_w_0))
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
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
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

(define-model N0
  (define-univ node (@uc_node_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ quorum_w (@uc_quorum_w_0))
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
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N1
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ quorum_w (@uc_quorum_w_0))
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
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N2
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ quorum_w (@uc_quorum_w_0))
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
    ((_ _) false)
  )))
  (interp-fun prepare (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((@uc_node_1 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N3
  (define-univ node (@uc_node_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ quorum_w (@uc_quorum_w_0))
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
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((@uc_node_0 @uc_round_1 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N4
  (define-univ node (@uc_node_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ quorum_w (@uc_quorum_w_0))
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
    ((@uc_node_0 @uc_round_1 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N5
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ quorum_w (@uc_quorum_w_0))
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
    ((_ _) false)
  )))
  (interp-fun prepare (match (
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_1 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(define-model N6
  (define-univ node (@uc_node_0))
  (define-univ quorum_c (@uc_quorum_c_0))
  (define-univ quorum_w (@uc_quorum_w_0))
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
    ((@uc_node_0 @uc_round_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun proposal (match (
    ((_ _) false)
  )))
  (interp-fun rcved_one_b (match (
    ((_ _ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_round_1 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))

(check-synth)
