(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/35.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "Mu*")
(define-fun w2 () String "*pa")
(define-fun w3 () String "*pa*")
(define-fun w4 () String "*e*")
(define-fun w5 () String "*e*t")
(define-fun w6 () String "*e*t*")
(define-fun w7 () String "pa**")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "*")
                (str.to_re "M")
                (str.to_re "a")
                (str.to_re "e")
                (str.to_re "p")
                (str.to_re "t")
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
(constraint (str.in_re w2 r))
(constraint (str.in_re w3 r))
(constraint (not (str.in_re w4 r)))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))

(check-synth)
