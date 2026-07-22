(set-info :author "Chentian Wu")
(set-info :source "examples/fol/firewall.pyv:c1")

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
    ((@uc_node_0 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((@uc_node_1) true)
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

(define-model N1
  (interp-sort node (@uc_node_0))
  (interp-fun allowed_in (match (
    ((@uc_node_0) true)
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

(define-model P1
  (interp-sort node (@uc_node_0))
  (interp-fun allowed_in (match (
    ((@uc_node_0) true)
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

(define-model N2
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_0) true)
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
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_1) true)
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
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_0) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N4
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun internal (match (
    ((@uc_node_0) true)
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun sent (match (
    ((@uc_node_0 @uc_node_1) true)
    ((@uc_node_1 @uc_node_1) true)
    ((_ _) false)
  )))
)

(define-model N5
  (interp-sort node (@uc_node_0))
  (interp-fun allowed_in (match (
    ((@uc_node_0) true)
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

(define-model P4
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

(define-model N6
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun allowed_in (match (
    ((@uc_node_0) true)
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

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (with-model P2 (FO.Sem phi (FO.Asp))))
(constraint (with-model P3 (FO.Sem phi (FO.Asp))))
(constraint (with-model P4 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N3 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N4 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N5 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N6 (FO.Sem phi (FO.Asp)))))

(check-synth)
