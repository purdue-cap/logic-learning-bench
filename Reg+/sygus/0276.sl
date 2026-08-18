(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/80.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "1234567890")
(define-fun w2 () String "$123456789012")
(define-fun w3 () String "a123456789")
(define-fun w4 () String "123456789")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "$")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "8")
                (str.to_re "9")
                (str.to_re "a")
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
(constraint (not (str.in_re w2 r)))
(constraint (not (str.in_re w3 r)))
(constraint (not (str.in_re w4 r)))

(check-synth)
