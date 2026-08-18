(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/124.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "Geek12#")
(define-fun w2 () String "asd123")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "#")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "G")
                (str.to_re "a")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "k")
                (str.to_re "s")
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
