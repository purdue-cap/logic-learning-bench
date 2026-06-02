(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/120.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "hoho")
(define-fun w2 () String "hihi")
(define-fun w3 () String "haha")
(define-fun w4 () String "hede")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "a")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "h")
                (str.to_re "i")
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
(constraint (str.in_re w2 r))
(constraint (str.in_re w3 r))
(constraint (not (str.in_re w4 r)))

(check-synth)
