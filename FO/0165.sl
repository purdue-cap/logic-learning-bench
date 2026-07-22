(set-info :author "Chentian Wu")
(set-info :source "examples/fol/client_server_ae.pyv:c0")

(require "theories/client_server_ae-fc20465a.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-sort request (@uc_request_0))
  (interp-sort response (@uc_response_0))
  (interp-fun match (match (
    ((@uc_request_0 @uc_response_0) true)
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((@uc_node_0 @uc_request_0) true)
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((_ _) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0))
  (interp-sort request (@uc_request_0))
  (interp-sort response (@uc_response_0))
  (interp-fun match (match (
    ((@uc_request_0 @uc_response_0) true)
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((@uc_node_0 @uc_response_0) true)
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((_ _) false)
  )))
)

(define-model N1
  (interp-sort node (@uc_node_0))
  (interp-sort request (@uc_request_0))
  (interp-sort response (@uc_response_0))
  (interp-fun match (match (
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((@uc_node_0 @uc_request_0) true)
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((@uc_node_0 @uc_response_0) true)
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((_ _) false)
  )))
)

(define-model N2
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-sort request (@uc_request_0))
  (interp-sort response (@uc_response_0))
  (interp-fun match (match (
    ((@uc_request_0 @uc_response_0) true)
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((@uc_node_0 @uc_request_0) true)
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((@uc_node_1 @uc_response_0) true)
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((_ _) false)
  )))
)

(define-model N3
  (interp-sort node (@uc_node_0))
  (interp-sort request (@uc_request_0))
  (interp-sort response (@uc_response_0 @uc_response_1))
  (interp-fun match (match (
    ((@uc_request_0 @uc_response_0) true)
    ((@uc_request_0 @uc_response_1) true)
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((@uc_node_0 @uc_response_1) true)
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((_ _) false)
  )))
)

(define-model P1
  (interp-sort node (@uc_node_0))
  (interp-sort request (@uc_request_0))
  (interp-sort response (@uc_response_0))
  (interp-fun match (match (
    ((@uc_request_0 @uc_response_0) true)
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((@uc_node_0 @uc_request_0) true)
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((@uc_node_0 @uc_response_0) true)
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((_ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N3 (FO.Sem phi (FO.Asp)))))

(check-synth)
