(set-info :author "Chentian Wu")
(set-info :source "examples/fol/consensus_wo_decide.pyv:c1")

(require "theories/consensus_wo_decide-e81991be.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (interp-fun voting_quorum (@uc_quorum_0))
  (interp-fun leader (match (
    ((_) false)
  )))
  (interp-fun member (match (
    ((@uc_node_0 @uc_quorum_0) true)
    ((_ _) false)
  )))
  (interp-fun vote_msg (match (
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model N0
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (interp-fun voting_quorum (@uc_quorum_0))
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
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model N1
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
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N2
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
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N3
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
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N4
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
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model P1
  (define-univ node (@uc_node_0))
  (define-univ quorum (@uc_quorum_0))
  (interp-fun voting_quorum (@uc_quorum_0))
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

(define-model N5
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
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N6
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
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
  (interp-fun vote_request_msg (match (
    ((_ _) false)
  )))
  (interp-fun voted (match (
    ((_) false)
  )))
  (interp-fun votes (match (
    ((@uc_node_1 @uc_node_0) true)
    ((_ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))
(constraint (not (FO.Sem phi (FO.Asp N6))))

(check-synth)
