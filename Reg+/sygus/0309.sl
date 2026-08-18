(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/113.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "Page 2 of 20")
(define-fun w2 () String "Page 2 of X")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "0")
                (str.to_re "2")
                (str.to_re "P")
                (str.to_re "X")
                (str.to_re "a")
                (str.to_re "e")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "o")
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
