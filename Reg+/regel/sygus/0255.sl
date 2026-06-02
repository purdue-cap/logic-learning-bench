(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/58.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "HELLO")
(define-fun w2 () String "H")
(define-fun w3 () String "HE LLO")
(define-fun w4 () String " HELLO")
(define-fun w5 () String "HELLO ")
(define-fun w6 () String " ")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "E")
                (str.to_re "H")
                (str.to_re "L")
                (str.to_re "O")
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
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))

(check-synth)
