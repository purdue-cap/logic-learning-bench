(set-info :author "Chentian Wu")
(set-info :source "examples/fol/firewall.pyv:c0")

(require "theories/firewall-0791aba8.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((_ _) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N1
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model P1
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((_ _) false)
  )))
)

(define-model P2
  (interp-sort node (@uc_node_0))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model P3
  (interp-sort node (@uc_node_0))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model P4
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_1 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model P5
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N2
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model P6
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model P7
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model P8
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N3
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model P9
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model P10
  (interp-sort node (@uc_node_0 @uc_node_1 @uc_node_2))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((@uc_node_2) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_1 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((@uc_node_2 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N4
  (interp-sort node (@uc_node_0 @uc_node_1 @uc_node_2))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((@uc_node_2) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_2 @uc_node_2) true)
    ((_ _) false)
  )))
)

(define-model N5
  (interp-sort node (@uc_node_0 @uc_node_1 @uc_node_2))
  (interp-fun allowed_in (match (
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((@uc_node_2) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_1) true)
    ((_ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (FO.Sem phi (FO.Asp P2)))
(constraint (FO.Sem phi (FO.Asp P3)))
(constraint (FO.Sem phi (FO.Asp P4)))
(constraint (FO.Sem phi (FO.Asp P5)))
(constraint (FO.Sem phi (FO.Asp P6)))
(constraint (FO.Sem phi (FO.Asp P7)))
(constraint (FO.Sem phi (FO.Asp P8)))
(constraint (FO.Sem phi (FO.Asp P9)))
(constraint (FO.Sem phi (FO.Asp P10)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))
(constraint (not (FO.Sem phi (FO.Asp N4))))
(constraint (not (FO.Sem phi (FO.Asp N5))))

(check-synth)
