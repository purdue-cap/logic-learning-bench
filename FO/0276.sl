(set-info :author "Chentian Wu")
(set-info :source "examples/fol/ring_id_not_dead.pyv:not_dead")

(require "theories/ring_id_not_dead-0fd50536.sl")

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
  (interp-fun sent (match (
    ((_) false)
  )))
)

(define-model N0
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
    ((_) false)
  )))
  (interp-fun pending (match (
    ((_ _) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(define-model P1
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
    ((_) false)
  )))
  (interp-fun pending (match (
    ((@uc_id_0 @uc_node_0) true)
    ((_ _) false)
  )))
  (interp-fun sent (match (
    ((_) false)
  )))
)

(define-model P2
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
  (interp-fun sent (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(define-model P3
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
    ((_) false)
  )))
  (interp-fun pending (match (
    ((@uc_id_0 @uc_node_0) true)
    ((_ _) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(define-model P4
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
    ((_) false)
  )))
  (interp-fun pending (match (
    ((_ _) false)
  )))
  (interp-fun sent (match (
    ((_) false)
  )))
)

(define-model P5
  (interp-sort id (@uc_id_0 @uc_id_1))
  (interp-sort node (@uc_node_0))
  (interp-fun idn (match (
    ((@uc_node_0) @uc_id_1)
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
    ((_) false)
  )))
  (interp-fun pending (match (
    ((@uc_id_0 @uc_node_0) true)
    ((_ _) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (not (FO.Sem phi (FO.Asp N0))))

(check-synth)
