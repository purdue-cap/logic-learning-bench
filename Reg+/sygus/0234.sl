(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/36.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "0.2lb")
(define-fun w2 () String "1.2lb")
(define-fun w3 () String "2lb")
(define-fun w4 () String "05lb")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ".")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "5")
                (str.to_re "b")
                (str.to_re "l")
                re.allchar
                (re.opt Start)
                (re.++ Start Start)
                (re.union Start Start)
                (re.inter Start Start)
                (re.* Start)
                (re.+ Start)
            )
        )
    )
)

(constraint (str.in_re w1 r))
(constraint (str.in_re w2 r))
(constraint (str.in_re w3 r))
(constraint (not (str.in_re w4 r)))

(check-synth)
