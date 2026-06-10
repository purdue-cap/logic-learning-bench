(set-info :author "Chentian Wu")
(set-info :source "examples/fol/client_server_ae.pyv:c1")

(require "theories/client_server_ae-fc20465a.sl")

(define-model P0
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
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
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
  (interp-fun match (match (
    ((@uc_request_0 @uc_response_0) true)
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((@uc_node_0 @uc_response_0) true)
    ((_ _) false)
  )))
)

(define-model N1
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
  (interp-fun match (match (
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
    ((@uc_node_0 @uc_response_0) true)
    ((_ _) false)
  )))
)

(define-model N2
  (define-univ node (@uc_node_0 @uc_node_1))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
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
    ((@uc_node_1 @uc_response_0) true)
    ((_ _) false)
  )))
)

(define-model N3
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0 @uc_response_1))
  (interp-fun match (match (
    ((@uc_request_0 @uc_response_0) true)
    ((@uc_request_0 @uc_response_1) true)
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((@uc_node_0 @uc_response_1) true)
    ((_ _) false)
  )))
)

(define-model P1
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
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
    ((@uc_node_0 @uc_response_0) true)
    ((_ _) false)
  )))
)

(synth-fun phi () FO0)

(constraint (FO.Sem phi (FO.Asp P0)))
(constraint (FO.Sem phi (FO.Asp P1)))
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))

(check-synth)
