(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/24.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "em1,erg,123,enc")
(define-fun w2 () String "em1,erg,123,ency")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ",")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "c")
                (str.to_re "e")
                (str.to_re "g")
                (str.to_re "m")
                (str.to_re "n")
                (str.to_re "r")
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
