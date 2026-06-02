(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/130.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a")
(define-fun w2 () String "C")
(define-fun w3 () String "Q")
(define-fun w4 () String "1")
(define-fun w5 () String "@")
(define-fun w6 () String "O")
(define-fun w7 () String "P")
(define-fun w8 () String "12")
(define-fun w9 () String "ac")
(define-fun w10 () String "CD")
(define-fun w11 () String "4D")
(define-fun w12 () String "@#")
(define-fun w13 () String "d1D")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "#")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "4")
                (str.to_re "@")
                (str.to_re "C")
                (str.to_re "D")
                (str.to_re "O")
                (str.to_re "P")
                (str.to_re "Q")
                (str.to_re "a")
                (str.to_re "c")
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
(constraint (str.in_re w4 r))
(constraint (str.in_re w5 r))
(constraint (str.in_re w6 r))
(constraint (str.in_re w7 r))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))
(constraint (not (str.in_re w10 r)))
(constraint (not (str.in_re w11 r)))
(constraint (not (str.in_re w12 r)))
(constraint (not (str.in_re w13 r)))

(check-synth)
