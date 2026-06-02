(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/89.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "camp.new.")
(define-fun w2 () String "ca.mp.n.e.w")
(define-fun w3 () String "camp..new")
(define-fun w4 () String "..")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ".")
                (str.to_re "a")
                (str.to_re "c")
                (str.to_re "e")
                (str.to_re "m")
                (str.to_re "n")
                (str.to_re "p")
                (str.to_re "w")
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
