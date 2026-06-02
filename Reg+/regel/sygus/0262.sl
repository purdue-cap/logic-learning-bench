(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/65.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "175")
(define-fun w2 () String "1.250")
(define-fun w3 () String "14.365")
(define-fun w4 () String "145.985")
(define-fun w5 () String "1.562.745")
(define-fun w6 () String "17.487.984")
(define-fun w7 () String "999.999.999")
(define-fun w8 () String "176.57.117")
(define-fun w9 () String "176.257.7")
(define-fun w10 () String "176.257.17")

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
                (str.to_re "8")
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
(constraint (str.in_re w7 r))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))
(constraint (not (str.in_re w10 r)))

(check-synth)
