(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/2.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "white snake")
(define-fun w2 () String "white snake valley")
(define-fun w3 () String "white  snake")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "a")
                (str.to_re "e")
                (str.to_re "h")
                (str.to_re "i")
                (str.to_re "k")
                (str.to_re "l")
                (str.to_re "n")
                (str.to_re "s")
                (str.to_re "t")
                (str.to_re "v")
                (str.to_re "w")
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
(constraint (str.in_re w2 r))
(constraint (not (str.in_re w3 r)))

(check-synth)
