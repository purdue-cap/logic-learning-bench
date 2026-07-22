(set-info :author "Chentian Wu")
(set-info :source "examples/fol/consensus_epr.pyv:c2")

(require "theories/consensus_epr-7b895afc.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
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
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
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
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model N1
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
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
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
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
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
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

(define-model N4
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
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

(define-model P1
  (interp-sort node (@uc_node_0))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
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

(define-model N5
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
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
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model N6
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort quorum (@uc_quorum_0))
  (interp-sort value (@uc_value_0))
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

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N3 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N4 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N5 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N6 (FO.Sem phi (FO.Asp)))))

(check-synth)
