(set-info :author "Chentian Wu")
(set-info :source "examples/fol/consensus_forall.pyv:c1")

(require "theories/consensus_forall-657b60a1.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
  (interp-fun voting_quorum (@uc_quorum_0))
  (interp-fun decided (match (
    ((_ _) false)
  )))
  (interp-fun leader (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun vote_msg (match (
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((_ _) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
  (interp-fun voting_quorum (@uc_quorum_0))
  (interp-fun decided (match (
    ((_ _) false)
  )))
  (interp-fun leader (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun vote_msg (match (
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((_ _) false)
  )))
)

(define-model P1
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
  (interp-fun voting_quorum (@uc_quorum_0))
  (interp-fun decided (match (
    ((_ _) false)
  )))
  (interp-fun leader (match (
    ((_) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((@uc_node_1 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun vote_msg (match (
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((_ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))

(check-synth)
