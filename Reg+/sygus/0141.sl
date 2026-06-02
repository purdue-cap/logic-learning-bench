(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/147.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "s")
(define-fun w2 () String "1")
(define-fun w3 () String "!")
(define-fun w4 () String "sd1")
(define-fun w5 () String "fd3")
(define-fun w6 () String "d!")
(define-fun w7 () String "s3a")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "1")
                (str.to_re "3")
                (str.to_re "a")
                (str.to_re "d")
                (str.to_re "f")
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
(constraint (str.in_re w5 r))
(constraint (str.in_re w6 r))
(constraint (str.in_re w7 r))

(check-synth)
