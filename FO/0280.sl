(set-info :author "Chentian Wu")
(set-info :source "examples/fol/sharded_kv.pyv:c2")

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
    ((@uc_node_0 @uc_key_0) true)
    ((_ _) false)
  )))
  (interp-fun table (match (
    ((_ _ _) false)
  )))
  (interp-fun transfer_msg (match (
    ((@uc_node_0 @uc_key_0 @uc_value_0) true)
    ((_ _ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (not (FO.Sem phi (FO.Asp N0))))

(check-synth)
