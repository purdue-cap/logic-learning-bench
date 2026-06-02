(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/70.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "1A")
(define-fun w2 () String "2BZ")
(define-fun w3 () String "7B")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "7")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "Z")
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
(constraint (not (str.in_re w3 r)))

(check-synth)
