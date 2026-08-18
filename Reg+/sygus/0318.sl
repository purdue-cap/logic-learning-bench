(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/122.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "ankit")
(define-fun w2 () String "Feeks")
(define-fun w3 () String "sandeep")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "F")
                (str.to_re "a")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "i")
                (str.to_re "k")
                (str.to_re "n")
                (str.to_re "p")
                (str.to_re "s")
                (str.to_re "t")
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

(check-synth)
