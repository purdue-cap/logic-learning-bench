(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/100.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "SO-123456")
(define-fun w2 () String "So-123456")
(define-fun w3 () String "sO-123456")
(define-fun w4 () String "so-123456")
(define-fun w5 () String "SO-12d456")
(define-fun w6 () String "SO-1234567")
(define-fun w7 () String "QR-123456")
(define-fun w8 () String "SO-45k789")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "-")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "8")
                (str.to_re "9")
                (str.to_re "O")
                (str.to_re "Q")
                (str.to_re "R")
                (str.to_re "S")
                (str.to_re "d")
                (str.to_re "k")
                (str.to_re "o")
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
(constraint (not (str.in_re w8 r)))

(check-synth)
