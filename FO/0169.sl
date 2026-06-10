(set-info :author "Chentian Wu")
(set-info :source "examples/fol/client_server_db_ae.pyv:c2")

(require "theories/client_server_db_ae-1a980ae7.sl")

(define-model P0
  (define-univ db_request_id (@uc_db_request_id_0))
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
  (interp-fun db_request_sent (match (
    ((_ _) false)
  )))
  (interp-fun db_response_sent (match (
    ((_ _) false)
  )))
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
    ((_ _) false)
  )))
  (interp-fun t (match (
    ((@uc_db_request_id_0 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model N0
  (define-univ db_request_id (@uc_db_request_id_0))
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
  (interp-fun db_request_sent (match (
    ((@uc_db_request_id_0 @uc_request_0) true)
    ((_ _) false)
  )))
  (interp-fun db_response_sent (match (
    ((_ _) false)
  )))
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
    ((_ _) false)
  )))
  (interp-fun t (match (
    ((_ _) false)
  )))
)

(define-model N1
  (define-univ db_request_id (@uc_db_request_id_0))
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
  (interp-fun db_request_sent (match (
    ((@uc_db_request_id_0 @uc_request_0) true)
    ((_ _) false)
  )))
  (interp-fun db_response_sent (match (
    ((_ _) false)
  )))
  (interp-fun match (match (
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((_ _) false)
  )))
  (interp-fun t (match (
    ((@uc_db_request_id_0 @uc_node_0) true)
    ((_ _) false)
  )))
)

(define-model N2
  (define-univ db_request_id (@uc_db_request_id_0))
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0 @uc_request_1))
  (define-univ response (@uc_response_0))
  (interp-fun db_request_sent (match (
    ((@uc_db_request_id_0 @uc_request_1) true)
    ((_ _) false)
  )))
  (interp-fun db_response_sent (match (
    ((_ _) false)
  )))
  (interp-fun match (match (
    ((_ _) false)
  )))
  (interp-fun request_sent (match (
    ((@uc_node_0 @uc_request_0) true)
    ((@uc_node_0 @uc_request_1) true)
    ((_ _) false)
  )))
  (interp-fun response_received (match (
    ((_ _) false)
  )))
  (interp-fun response_sent (match (
    ((_ _) false)
  )))
  (interp-fun t (match (
    ((_ _) false)
  )))
)

(define-model N3
  (define-univ db_request_id (@uc_db_request_id_0 @uc_db_request_id_1))
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
  (interp-fun db_request_sent (match (
    ((@uc_db_request_id_1 @uc_request_0) true)
    ((_ _) false)
  )))
  (interp-fun db_response_sent (match (
    ((_ _) false)
  )))
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
    ((_ _) false)
  )))
  (interp-fun t (match (
    ((_ _) false)
  )))
)

(define-model P1
  (define-univ db_request_id (@uc_db_request_id_0))
  (define-univ node (@uc_node_0))
  (define-univ request (@uc_request_0))
  (define-univ response (@uc_response_0))
  (interp-fun db_request_sent (match (
    ((@uc_db_request_id_0 @uc_request_0) true)
    ((_ _) false)
  )))
  (interp-fun db_response_sent (match (
    ((_ _) false)
  )))
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
    ((_ _) false)
  )))
  (interp-fun t (match (
    ((@uc_db_request_id_0 @uc_node_0) true)
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
