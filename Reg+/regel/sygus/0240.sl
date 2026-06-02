(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/42.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "C01245")
(define-fun w2 () String "C04751")
(define-fun w3 () String "C15821")
(define-fun w4 () String "C0412")
(define-fun w5 () String "C0a457")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "7")
                (str.to_re "8")
                (str.to_re "C")
                (str.to_re "a")
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
(constraint (not (str.in_re w5 r)))

(check-synth)
