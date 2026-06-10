(set-info :author "Chentian Wu")
(set-info :source "examples/fol/toy_consensus_forall.pyv:c1")

(require "theories/toy_consensus_forall-5707ce3d.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ value (@uc_value_0))
  (interp-fun voting_quorum (@uc_quorum_0))
  (interp-fun decided (match (
    ((_) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(define-model N0
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ value (@uc_value_0))
  (interp-fun voting_quorum (@uc_quorum_0))
  (interp-fun decided (match (
    ((_) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
)

(define-model N1
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum (@uc_quorum_0))
  (define-univ value (@uc_value_0))
  (interp-fun voting_quorum (@uc_quorum_0))
  (interp-fun decided (match (
    ((_) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_value_0) true)
    ((@uc_node_1 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
)

(define-model P1
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ value (@uc_value_0))
  (interp-fun voting_quorum (@uc_quorum_0))
  (interp-fun decided (match (
    ((_) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
)

(define-model N2
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ value (@uc_value_0 @uc_value_1))
  (interp-fun voting_quorum (@uc_quorum_0))
  (interp-fun decided (match (
    ((_) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun vote (match (
    ((@uc_node_0 @uc_value_1) true)
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))

(check-synth)
