(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/16.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.


(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
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


(check-synth)
