(require "../theories/main.sl")
 ;; propositional modal logic

;; in PML, define-model requires users to define

;; - a finite set of states S.
;; - a set of initial states I ⊆ S.
;; - a transition relation R ⊆ S × S such that R is left-total, i.e., ∀s ∈ S ∃s' ∈ S such that (s,s') ∈ R.
;; - a labeling (or interpretation) function L: S → 2AP.

(synth-fun phi () Modal)

(constraint (with-model K1 (Modal.Sem phi (ModalAsp $0))))
(constraint (with-model K2 (Modal.Sem phi (ModalAsp $0))))
(constraint (not (with-model K3 (Modal.Sem phi (ModalAsp $0)))))

(check-synth)
