(set-info :author "Chentian Wu")
(set-info :source "examples/fol/lockserv.pyv:c6")

(require "theories/lockserv-8b9478a9.sl")

(define-model P0
  (interp-sort node (@uc_node_0))
  (interp-fun grant_msg (match (
    ((_) false)
  )))
  (interp-fun holds_lock (match (
    ((_) false)
  )))
  (interp-fun lock_msg (match (
    ((_) false)
  )))
  (interp-fun server_holds_lock (false))
  (interp-fun unlock_msg (match (
    ((_) false)
  )))
)

(define-model P1
  (interp-sort node (@uc_node_0))
  (interp-fun grant_msg (match (
    ((_) false)
  )))
  (interp-fun holds_lock (match (
    ((_) false)
  )))
  (interp-fun lock_msg (match (
    ((_) false)
  )))
  (interp-fun server_holds_lock (true))
  (interp-fun unlock_msg (match (
    ((_) false)
  )))
)

(define-model N0
  (interp-sort node (@uc_node_0))
  (interp-fun grant_msg (match (
    ((_) false)
  )))
  (interp-fun holds_lock (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun lock_msg (match (
    ((_) false)
  )))
  (interp-fun server_holds_lock (true))
  (interp-fun unlock_msg (match (
    ((_) false)
  )))
)

(define-model N1
  (interp-sort node (@uc_node_0 @uc_node_1))
  (interp-fun grant_msg (match (
    ((_) false)
  )))
  (interp-fun holds_lock (match (
    ((@uc_node_1) true)
    ((_) false)
  )))
  (interp-fun lock_msg (match (
    ((_) false)
  )))
  (interp-fun server_holds_lock (true))
  (interp-fun unlock_msg (match (
    ((_) false)
  )))
)

(define-model P2
  (interp-sort node (@uc_node_0))
  (interp-fun grant_msg (match (
    ((_) false)
  )))
  (interp-fun holds_lock (match (
    ((@uc_node_0) true)
    ((_) false)
  )))
  (interp-fun lock_msg (match (
    ((_) false)
  )))
  (interp-fun server_holds_lock (false))
  (interp-fun unlock_msg (match (
    ((_) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (with-model P2 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))

(check-synth)
