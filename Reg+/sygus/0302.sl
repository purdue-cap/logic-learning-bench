(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/106.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "ACCCGTTNNGTCCGGA3")
(define-fun w2 () String "ACCCGTTNNGTCCGGATTGAANNGT9")
(define-fun w3 () String "TTGGACCNAC0")
(define-fun w4 () String "ACGGTA0")
(define-fun w5 () String "BACGGTA0")
(define-fun w6 () String "TTGGACCNACACCCGTTNNGTCCGGATTGAANNGTTTGGACCNACACCCGTTNNGTCCGGATTGAANNGTTTGGACCNACACCCGTTNNGTCCGGATTGAANNGT2")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "0")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "9")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "C")
                (str.to_re "G")
                (str.to_re "N")
                (str.to_re "T")
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

(check-synth)
