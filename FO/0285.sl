(set-info :author "Chentian Wu")
(set-info :source "examples/fol/ticket.pyv:c0")

(require "theories/ticket-edf46754.sl")

(define-model P0
  (define-univ thread (@uc_thread_0))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((@uc_thread_0) true)
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((@uc_thread_0) true)
    ((_) false)
  )))
)

(define-model N0
  (define-univ thread (@uc_thread_0))
  (define-univ ticket (@uc_ticket_0))
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

(define-model N1
  (define-univ thread (@uc_thread_0 @uc_thread_1))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
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
  (define-univ thread (@uc_thread_0 @uc_thread_1))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model N3
  (define-univ thread (@uc_thread_0 @uc_thread_1))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
    ((_) false)
  )))
)

(define-model P1
  (define-univ thread (@uc_thread_0))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((@uc_thread_0) true)
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model P2
  (define-univ thread (@uc_thread_0))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((@uc_thread_0) true)
    ((_) false)
  )))
)

(define-model P3
  (define-univ thread (@uc_thread_0))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((@uc_thread_0) true)
    ((_) false)
  )))
)

(define-model P4
  (define-univ thread (@uc_thread_0))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
    ((_) false)
  )))
)

(define-model P5
  (define-univ thread (@uc_thread_0))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
    ((_) false)
  )))
  (interp-fun pc2 (match (
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
  )))
)

(define-model P6
  (define-univ thread (@uc_thread_0))
  (define-univ ticket (@uc_ticket_0))
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
    ((@uc_thread_0) true)
    ((_) false)
  )))
  (interp-fun pc3 (match (
    ((_) false)
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
(constraint (not (FO.Sem phi (FO.Asp N0))))
(constraint (not (FO.Sem phi (FO.Asp N1))))
(constraint (not (FO.Sem phi (FO.Asp N2))))
(constraint (not (FO.Sem phi (FO.Asp N3))))

(check-synth)
