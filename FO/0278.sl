(set-info :author "Chentian Wu")
(set-info :source "examples/fol/sharded_kv.pyv:c0")

(require "theories/sharded_kv-835f8b45.sl")

(define-model P0
  (define-univ key (@uc_key_0))
  (define-univ node (@uc_node_0))
  (define-univ value (@uc_value_0))
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
  (define-univ key (@uc_key_0))
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ value (@uc_value_0))
  (interp-fun owner (match (
    ((@uc_node_0 @uc_key_0) true)
    ((@uc_node_1 @uc_key_0) true)
    ((_ _) false)
  )))
  (interp-fun table (match (
    ((_ _ _) false)
  )))
  (interp-fun transfer_msg (match (
    ((_ _ _) false)
  )))
)

(define-model P1
  (define-univ key (@uc_key_0))
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ value (@uc_value_0))
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

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (not (FO.Sem phi (FO.Asp N0))))

(check-synth)
