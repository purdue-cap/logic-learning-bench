(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/85.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "SH123456")
(define-fun w2 () String "ab123456")
(define-fun w3 () String "12345678")
(define-fun w4 () String "sd456565")
(define-fun w5 () String "S2D3E4F5")
(define-fun w6 () String "a1234567")
(define-fun w7 () String "1234567")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "8")
                (str.to_re "D")
                (str.to_re "E")
                (str.to_re "F")
                (str.to_re "H")
                (str.to_re "S")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "d")
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
(constraint (str.in_re w2 r))
(constraint (str.in_re w3 r))
(constraint (str.in_re w4 r))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))

(check-synth)
