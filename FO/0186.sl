(set-info :author "Chentian Wu")
(set-info :source "examples/fol/consensus_wo_decide.pyv:c0")

(require "theories/consensus_wo_decide-e81991be.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (interp-fun voting_quorum (@uc_quorum_0))
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
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum (@uc_quorum_0))
  (interp-fun voting_quorum (@uc_quorum_0))
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
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ quorum (@uc_quorum_0))
  (interp-fun voting_quorum (@uc_quorum_0))
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

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (not (FO.Sem phi (FO.Asp N0))))

(check-synth)
