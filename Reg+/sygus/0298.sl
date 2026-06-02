(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/102.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "B")
(define-fun w2 () String "B6")
(define-fun w3 () String "BB")
(define-fun w4 () String "AB")
(define-fun w5 () String "G3")
(define-fun w6 () String "A B")
(define-fun w7 () String "A 4")
(define-fun w8 () String "6HC")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "6")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "C")
                (str.to_re "G")
                (str.to_re "H")
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
(constraint (str.in_re w4 r))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))

(check-synth)
