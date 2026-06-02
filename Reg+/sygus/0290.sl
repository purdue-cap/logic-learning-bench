(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/94.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "0")
(define-fun w2 () String "1000")
(define-fun w3 () String "50000")
(define-fun w4 () String "1,000")
(define-fun w5 () String "50,000")
(define-fun w6 () String "99,992,001")
(define-fun w7 () String "00")
(define-fun w8 () String "0001")
(define-fun w9 () String "999")
(define-fun w10 () String "1,1,00")
(define-fun w11 () String "1.000.000")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ",")
                (str.to_re ".")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "5")
                (str.to_re "9")
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
(constraint (not (str.in_re w10 r)))
(constraint (not (str.in_re w11 r)))

(check-synth)
