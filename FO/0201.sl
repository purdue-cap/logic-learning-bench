(set-info :author "Chentian Wu")
(set-info :source "examples/fol/learning_switch.pyv:c0")

(require "theories/learning_switch-8126de3d.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_node_0 @uc_node_0) true)
    ((_ _ _) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((_ _ _) false)
  )))
)

(define-model N1
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_1 @uc_node_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
)

(define-model N2
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_0 @uc_node_1) true)
    ((@uc_node_0 @uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))

(check-synth)
