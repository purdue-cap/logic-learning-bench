(set-info :author "Chentian Wu")
(set-info :source "examples/fol/ticket.pyv:c6")

(require "theories/ticket-edf46754.sl")

(define-model P0
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0))
  (interp-fun next_ticket (@uc_ticket_0))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model N0
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0 @uc_ticket_1))
  (interp-fun next_ticket (@uc_ticket_1))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((@uc_ticket_0 @uc_ticket_1) true)
    ((@uc_ticket_1 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((@uc_thread_0 @uc_ticket_0) true)
    ((@uc_thread_0 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model P1
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0 @uc_ticket_1))
  (interp-fun next_ticket (@uc_ticket_1))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((@uc_ticket_0 @uc_ticket_1) true)
    ((@uc_ticket_1 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model N1
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0 @uc_ticket_1))
  (interp-fun next_ticket (@uc_ticket_1))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((@uc_ticket_0 @uc_ticket_1) true)
    ((@uc_ticket_1 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((@uc_thread_0 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model N2
  (interp-sort thread (@uc_thread_0 @uc_thread_1))
  (interp-sort ticket (@uc_ticket_0 @uc_ticket_1))
  (interp-fun next_ticket (@uc_ticket_1))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((@uc_ticket_0 @uc_ticket_1) true)
    ((@uc_ticket_1 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((@uc_thread_1 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model N3
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0 @uc_ticket_1 @uc_ticket_2))
  (interp-fun next_ticket (@uc_ticket_1))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((@uc_ticket_0 @uc_ticket_1) true)
    ((@uc_ticket_0 @uc_ticket_2) true)
    ((@uc_ticket_1 @uc_ticket_1) true)
    ((@uc_ticket_1 @uc_ticket_2) true)
    ((@uc_ticket_2 @uc_ticket_2) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((@uc_thread_0 @uc_ticket_2) true)
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model P2
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0))
  (interp-fun next_ticket (@uc_ticket_0))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((@uc_thread_0 @uc_ticket_0) true)
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model P3
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0 @uc_ticket_1))
  (interp-fun next_ticket (@uc_ticket_0))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_1))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((@uc_ticket_1 @uc_ticket_0) true)
    ((@uc_ticket_1 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((@uc_thread_0 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model N4
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0 @uc_ticket_1))
  (interp-fun next_ticket (@uc_ticket_1))
  (interp-fun service (@uc_ticket_1))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((@uc_ticket_0 @uc_ticket_1) true)
    ((@uc_ticket_1 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((@uc_thread_0 @uc_ticket_0) true)
    ((@uc_thread_0 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model P4
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0 @uc_ticket_1))
  (interp-fun next_ticket (@uc_ticket_0))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((@uc_ticket_0 @uc_ticket_1) true)
    ((@uc_ticket_1 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((@uc_thread_0 @uc_ticket_0) true)
    ((@uc_thread_0 @uc_ticket_1) true)
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model P5
  (interp-sort thread (@uc_thread_0))
  (interp-sort ticket (@uc_ticket_0 @uc_ticket_1 @uc_ticket_2))
  (interp-fun next_ticket (@uc_ticket_1))
  (interp-fun service (@uc_ticket_0))
  (interp-fun zero (@uc_ticket_0))
  (interp-fun le (match (
    ((@uc_ticket_0 @uc_ticket_0) true)
    ((@uc_ticket_0 @uc_ticket_1) true)
    ((@uc_ticket_0 @uc_ticket_2) true)
    ((@uc_ticket_1 @uc_ticket_1) true)
    ((@uc_ticket_2 @uc_ticket_1) true)
    ((@uc_ticket_2 @uc_ticket_2) true)
    ((_ _) false)
  )))
  (interp-fun m (match (
    ((@uc_thread_0 @uc_ticket_2) true)
    ((_ _) false)
  )))
  (interp-fun pc1 (match (
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(synth-fun phi () FO0)

(constraint (with-model P0 (FO.Sem phi (FO.Asp))))
(constraint (with-model P1 (FO.Sem phi (FO.Asp))))
(constraint (with-model P2 (FO.Sem phi (FO.Asp))))
(constraint (with-model P3 (FO.Sem phi (FO.Asp))))
(constraint (with-model P4 (FO.Sem phi (FO.Asp))))
(constraint (with-model P5 (FO.Sem phi (FO.Asp))))
(constraint (not (with-model N0 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N1 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N2 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N3 (FO.Sem phi (FO.Asp)))))
(constraint (not (with-model N4 (FO.Sem phi (FO.Asp)))))

(check-synth)
