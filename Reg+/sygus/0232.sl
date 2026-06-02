(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/33.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "0990 09253U108 BX")
(define-fun w2 () String "0990 02376R102 AAL")
(define-fun w3 () String "00000003610014112202013 2 5")
(define-fun w4 () String "00000003610014112192013 2 47")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
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
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "L")
                (str.to_re "R")
                (str.to_re "U")
                (str.to_re "X")
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
