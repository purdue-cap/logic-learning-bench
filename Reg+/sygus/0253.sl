(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/56.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "My Name Is Jass")
(define-fun w2 () String "My name is Jass")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "I")
                (str.to_re "J")
                (str.to_re "M")
                (str.to_re "N")
                (str.to_re "a")
                (str.to_re "e")
                (str.to_re "i")
                (str.to_re "m")
                (str.to_re "n")
                (str.to_re "s")
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

(check-synth)
