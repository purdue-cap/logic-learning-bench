(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/78.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "A4hgg5")
(define-fun w2 () String "A4_6hy")
(define-fun w3 () String "a@yb")
(define-fun w4 () String "_")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "@")
                (str.to_re "A")
                (str.to_re "_")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "g")
                (str.to_re "h")
                (str.to_re "y")
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
