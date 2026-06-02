(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/107.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "123.12")
(define-fun w2 () String "2")
(define-fun w3 () String "56754")
(define-fun w4 () String "92929292929292.12")
(define-fun w5 () String "0.21")
(define-fun w6 () String "3.1")
(define-fun w7 () String "12.1232")
(define-fun w8 () String "2.23332")
(define-fun w9 () String "e666.76")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ".")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "9")
                (str.to_re "e")
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
(constraint (str.in_re w5 r))
(constraint (str.in_re w6 r))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))

(check-synth)
