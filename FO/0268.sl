(set-info :author "Chentian Wu")
(set-info :source "examples/fol/ring_id.pyv:leader_max")

(require "theories/ring_id-3202b4a0.sl")

(define-model P0
  (interp-sort id (@uc_id_0))
  (interp-sort node (@uc_node_0))
  (interp-fun idn (match (
    ((@uc_node_0) @uc_id_0)
    ((_) @uc_id_0)
  )))
  (interp-fun btw (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_id_0 @uc_id_0) true)
    ((_ _) false)
  )))
  (interp-fun leader (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun pending (match (
    ((_ _) false)
  )))
)

(define-model N0
  (interp-sort id (@uc_id_0 @uc_id_1))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun idn (match (
    ((@uc_node_0) @uc_id_1)
    ((@uc_node_1) @uc_id_0)
    ((_) @uc_id_0)
  )))
  (interp-fun btw (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_id_0 @uc_id_0) true)
    ((@uc_id_1 @uc_id_0) true)
    ((@uc_id_1 @uc_id_1) true)
    ((_ _) false)
  )))
  (interp-fun leader (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun pending (match (
    ((_ _) false)
  )))
)

(define-model P1
  (interp-sort id (@uc_id_0 @uc_id_1))
  (interp-sort node (@uc_node_0))
  (interp-fun idn (match (
    ((@uc_node_0) @uc_id_0)
    ((_) @uc_id_0)
  )))
  (interp-fun btw (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_id_0 @uc_id_0) true)
    ((@uc_id_1 @uc_id_0) true)
    ((@uc_id_1 @uc_id_1) true)
    ((_ _) false)
  )))
  (interp-fun leader (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun pending (match (
    ((_ _) false)
  )))
)

(define-model P2
  (interp-sort id (@uc_id_0 @uc_id_1))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun idn (match (
    ((@uc_node_0) @uc_id_0)
    ((@uc_node_1) @uc_id_1)
    ((_) @uc_id_0)
  )))
  (interp-fun btw (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_id_0 @uc_id_0) true)
    ((@uc_id_0 @uc_id_1) true)
    ((@uc_id_1 @uc_id_1) true)
    ((_ _) false)
  )))
  (interp-fun leader (match (
    ((_) false)
  )))
  (interp-fun pending (match (
    ((_ _) false)
  )))
)

(define-model N1
  (interp-sort id (@uc_id_0 @uc_id_1))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun idn (match (
    ((@uc_node_0) @uc_id_0)
    ((@uc_node_1) @uc_id_1)
    ((_) @uc_id_0)
  )))
  (interp-fun btw (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_id_0 @uc_id_0) true)
    ((@uc_id_0 @uc_id_1) true)
    ((@uc_id_1 @uc_id_1) true)
    ((_ _) false)
  )))
  (interp-fun leader (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun pending (match (
    ((_ _) false)
  )))
)

(define-model P3
  (interp-sort id (@uc_id_0 @uc_id_1))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun idn (match (
    ((@uc_node_0) @uc_id_0)
    ((@uc_node_1) @uc_id_1)
    ((_) @uc_id_0)
  )))
  (interp-fun btw (match (
    ((_ _ _) false)
  )))
  (interp-fun le (match (
    ((@uc_id_0 @uc_id_0) true)
    ((@uc_id_0 @uc_id_1) true)
    ((@uc_id_1 @uc_id_1) true)
    ((_ _) false)
  )))
  (interp-fun leader (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun pending (match (
    ((_ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))

(check-synth)
