(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/66.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "Sunil Kumar")
(define-fun w2 () String "Sunil Kumar 123")
(define-fun w3 () String "SUnil Kumar")
(define-fun w4 () String "Sunil  Kumar")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "K")
                (str.to_re "S")
                (str.to_re "U")
                (str.to_re "a")
                (str.to_re "i")
                (str.to_re "l")
                (str.to_re "m")
                (str.to_re "n")
                (str.to_re "r")
                (str.to_re "u")
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
