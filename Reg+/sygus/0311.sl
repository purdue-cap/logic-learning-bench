(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/115.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "abc.def")
(define-fun w2 () String "abc.fgh.ijk")
(define-fun w3 () String "abc.m.nop.pqrs")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ".")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "h")
                (str.to_re "i")
                (str.to_re "j")
                (str.to_re "k")
                (str.to_re "m")
                (str.to_re "n")
                (str.to_re "o")
                (str.to_re "p")
                (str.to_re "q")
                (str.to_re "r")
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
(constraint (not (str.in_re w3 r)))

(check-synth)
