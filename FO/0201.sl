(set-info :author "Chentian Wu")
(set-info :source "examples/fol/learning_switch.pyv:c0")

(require "theories/learning_switch-8126de3d.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_node_0 @uc_node_0) true)
    ((_ _ _) false)
  )))
)

(define-model N0
  (define-univ node (@uc_node_0))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((_ _ _) false)
  )))
)

(define-model N1
  (define-univ node (@uc_node_0 @uc_node_1))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_1 @uc_node_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
)

(define-model N2
  (define-univ node (@uc_node_0 @uc_node_1))
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

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))

(check-synth)
