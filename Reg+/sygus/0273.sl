(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/77.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "ab@4_w")
(define-fun w2 () String "sd!tye123")
(define-fun w3 () String "sd%tye123")
(define-fun w4 () String "sd*tye123")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "%")
                (str.to_re "*")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "@")
                (str.to_re "_")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "s")
                (str.to_re "t")
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
(constraint (not (str.in_re w4 r)))

(check-synth)
