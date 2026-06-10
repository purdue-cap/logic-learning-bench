(set-info :author "Chentian Wu")
(set-info :source "examples/fol/consensus_epr.pyv:c0")

(require "theories/consensus_epr-7b895afc.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ value (@uc_value_0))
  (interp-fun decided (match (
    ((@uc_node_0 @uc_value_0) true)
    ((_ _) false)
  )))
  (interp-fun leader (match (
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
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ value (@uc_value_0 @uc_value_1))
  (interp-fun decided (match (
    ((@uc_node_0 @uc_value_0) true)
    ((@uc_node_0 @uc_value_1) true)
    ((_ _) false)
  )))
  (interp-fun leader (match (
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

(define-model P1
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (define-univ value (@uc_value_0 @uc_value_1))
  (interp-fun decided (match (
    ((_ _) false)
  )))
  (interp-fun leader (match (
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

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (not (FO.Sem phi (FO.Asp N0))))

(check-synth)
