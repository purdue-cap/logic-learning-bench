(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/90.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "77")
(define-fun w2 () String "2377")
(define-fun w3 () String "77.43")
(define-fun w4 () String "xyz777")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ".")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "7")
                (str.to_re "x")
                (str.to_re "y")
                (str.to_re "z")
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
(constraint (not (str.in_re w4 r)))

(check-synth)
