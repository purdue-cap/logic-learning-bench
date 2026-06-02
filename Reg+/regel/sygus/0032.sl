(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/32.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "!0a")
(define-fun w2 () String "!100a")
(define-fun w3 () String "!1000b")
(define-fun w4 () String "!2c")
(define-fun w5 () String "!3a")
(define-fun w6 () String "!!4a")
(define-fun w7 () String "!!!1a")
(define-fun w8 () String "!0")
(define-fun w9 () String "!a")
(define-fun w10 () String "a!")
(define-fun w11 () String "a0")
(define-fun w12 () String "0")
(define-fun w13 () String "a")
(define-fun w14 () String "!a0")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
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
(constraint (not (str.in_re w14 r)))

(check-synth)
