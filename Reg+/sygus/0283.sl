(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/87.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "0,872")
(define-fun w2 () String "0,87")
(define-fun w3 () String "0,8")
(define-fun w4 () String "0,001")
(define-fun w5 () String "1,000")
(define-fun w6 () String "1,00")
(define-fun w7 () String "1")
(define-fun w8 () String "80,546")
(define-fun w9 () String "80,000")
(define-fun w10 () String "81,001")
(define-fun w11 () String "0")
(define-fun w12 () String "0,0")
(define-fun w13 () String "0,00")
(define-fun w14 () String "0,000")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ",")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "8")
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
(constraint (str.in_re w8 r))
(constraint (str.in_re w9 r))
(constraint (str.in_re w10 r))
(constraint (not (str.in_re w11 r)))
(constraint (not (str.in_re w12 r)))
(constraint (not (str.in_re w13 r)))
(constraint (not (str.in_re w14 r)))

(check-synth)
