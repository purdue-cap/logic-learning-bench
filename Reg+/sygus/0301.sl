(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/105.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "ABCDEF05")
(define-fun w2 () String "A21")
(define-fun w3 () String "C99")
(define-fun w4 () String "d12")
(define-fun w5 () String "1")
(define-fun w6 () String "A123")
(define-fun w7 () String "A1234")
(define-fun w8 () String "AB00")
(define-fun w9 () String "ABCDEFG01")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "9")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "C")
                (str.to_re "D")
                (str.to_re "E")
                (str.to_re "F")
                (str.to_re "G")
                (str.to_re "d")
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
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))

(check-synth)
