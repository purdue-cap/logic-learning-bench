(set-info :author "Chentian Wu")
(set-info :source "examples/fol/learning_switch.pyv:c1")

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
  (define-univ node (@uc_node_0 @uc_node_1))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_node_0 @uc_node_1) true)
    ((@uc_node_0 @uc_node_1 @uc_node_0) true)
    ((_ _ _) false)
  )))
)

(define-model N1
  (define-univ node (@uc_node_0 @uc_node_1))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_0 @uc_node_1) true)
    ((@uc_node_0 @uc_node_1 @uc_node_0) true)
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
    ((@uc_node_1 @uc_node_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
)

(define-model N3
  (define-univ node (@uc_node_0 @uc_node_1))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_0 @uc_node_1) true)
    ((@uc_node_0 @uc_node_1 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1 @uc_node_0) true)
    ((_ _ _) false)
  )))
)

(define-model P1
  (define-univ node (@uc_node_0 @uc_node_1))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_0 @uc_node_1) true)
    ((@uc_node_0 @uc_node_1 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1 @uc_node_1) true)
    ((_ _ _) false)
  )))
)

(define-model N4
  (define-univ node (@uc_node_0 @uc_node_1 @uc_node_2))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_0 @uc_node_1) true)
    ((@uc_node_0 @uc_node_1 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1 @uc_node_1) true)
    ((@uc_node_0 @uc_node_1 @uc_node_2) true)
    ((@uc_node_0 @uc_node_2 @uc_node_0) true)
    ((@uc_node_0 @uc_node_2 @uc_node_1) true)
    ((@uc_node_0 @uc_node_2 @uc_node_2) true)
    ((@uc_node_1 @uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0 @uc_node_2) true)
    ((@uc_node_1 @uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1 @uc_node_2) true)
    ((@uc_node_1 @uc_node_2 @uc_node_0) true)
    ((@uc_node_1 @uc_node_2 @uc_node_1) true)
    ((@uc_node_1 @uc_node_2 @uc_node_2) true)
    ((@uc_node_2 @uc_node_0 @uc_node_0) true)
    ((@uc_node_2 @uc_node_0 @uc_node_1) true)
    ((@uc_node_2 @uc_node_0 @uc_node_2) true)
    ((@uc_node_2 @uc_node_1 @uc_node_0) true)
    ((@uc_node_2 @uc_node_1 @uc_node_1) true)
    ((@uc_node_2 @uc_node_1 @uc_node_2) true)
    ((@uc_node_2 @uc_node_2 @uc_node_0) true)
    ((@uc_node_2 @uc_node_2 @uc_node_1) true)
    ((@uc_node_2 @uc_node_2 @uc_node_2) true)
    ((_ _ _) false)
  )))
)

(define-model N5
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

(define-model N6
  (define-univ node (@uc_node_0 @uc_node_1 @uc_node_2))
  (interp-fun pending (match (
    ((_ _ _ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_0 @uc_node_1) true)
    ((@uc_node_0 @uc_node_0 @uc_node_2) true)
    ((@uc_node_0 @uc_node_1 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1 @uc_node_1) true)
    ((@uc_node_0 @uc_node_1 @uc_node_2) true)
    ((@uc_node_0 @uc_node_2 @uc_node_0) true)
    ((@uc_node_0 @uc_node_2 @uc_node_1) true)
    ((@uc_node_0 @uc_node_2 @uc_node_2) true)
    ((@uc_node_1 @uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1 @uc_node_2) true)
    ((@uc_node_1 @uc_node_2 @uc_node_0) true)
    ((@uc_node_1 @uc_node_2 @uc_node_1) true)
    ((@uc_node_1 @uc_node_2 @uc_node_2) true)
    ((@uc_node_2 @uc_node_0 @uc_node_0) true)
    ((@uc_node_2 @uc_node_0 @uc_node_1) true)
    ((@uc_node_2 @uc_node_0 @uc_node_2) true)
    ((@uc_node_2 @uc_node_1 @uc_node_0) true)
    ((@uc_node_2 @uc_node_1 @uc_node_1) true)
    ((@uc_node_2 @uc_node_1 @uc_node_2) true)
    ((@uc_node_2 @uc_node_2 @uc_node_0) true)
    ((@uc_node_2 @uc_node_2 @uc_node_1) true)
    ((@uc_node_2 @uc_node_2 @uc_node_2) true)
    ((_ _ _) false)
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
