(set-info :author "Chentian Wu")
(set-info :source "examples/fol/sharded_kv.pyv:c1")

(require "theories/sharded_kv-835f8b45.sl")

(define-model P0
  (interp-sort key (@uc_key_0))
  (interp-sort node (@uc_node_0))
  (interp-sort value (@uc_value_0))
  (interp-fun owner (match (
    ((@uc_node_0 @uc_key_0) true)
    ((_ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_key_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun transfer_msg (match (
    ((_ _ _) false)
  )))
)

(define-model N0
  (interp-sort key (@uc_key_0))
  (interp-sort node (@uc_node_0))
  (interp-sort value (@uc_value_0))
  (interp-fun owner (match (
    ((_ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_key_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun transfer_msg (match (
    ((_ _ _) false)
  )))
)

(define-model N1
  (interp-sort key (@uc_key_0))
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort value (@uc_value_0))
  (interp-fun owner (match (
    ((@uc_node_0 @uc_key_0) true)
    ((_ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_key_0 @uc_value_0) true)
    ((@uc_node_1 @uc_key_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun transfer_msg (match (
    ((_ _ _) false)
  )))
)

(define-model N2
  (interp-sort key (@uc_key_0 @uc_key_1))
  (interp-sort node (@uc_node_0))
  (interp-sort value (@uc_value_0))
  (interp-fun owner (match (
    ((@uc_node_0 @uc_key_0) true)
    ((_ _) false)
  )))
  (interp-fun table (match (
    ((@uc_node_0 @uc_key_0 @uc_value_0) true)
    ((@uc_node_0 @uc_key_1 @uc_value_0) true)
    ((_ _ _) false)
  )))
  (interp-fun transfer_msg (match (
    ((_ _ _) false)
  )))
)

(define-model P1
  (interp-sort key (@uc_key_0))
  (interp-sort node (@uc_node_0))
  (interp-sort value (@uc_value_0))
  (interp-fun owner (match (
    ((_ _) false)
  )))
  (interp-fun table (match (
    ((_ _ _) false)
  )))
  (interp-fun transfer_msg (match (
    ((_ _ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))

(check-synth)
