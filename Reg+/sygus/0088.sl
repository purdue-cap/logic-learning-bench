(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/90.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "9")
(define-fun w2 () String "k")
(define-fun w3 () String "a")
(define-fun w4 () String "b")
(define-fun w5 () String "c")
(define-fun w6 () String "av@c2")
(define-fun w7 () String "99999")
(define-fun w8 () String "jhgfd")
(define-fun w9 () String "nbvcx")
(define-fun w10 () String "rtyu")
(define-fun w11 () String "fghj")
(define-fun w12 () String "xcfghjk")

(define-fun w13 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "2")
                (str.to_re "9")
                (str.to_re "@")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "d")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "h")
                (str.to_re "j")
                (str.to_re "k")
                (str.to_re "n")
                (str.to_re "r")
                (str.to_re "t")
                (str.to_re "u")
                (str.to_re "v")
                (str.to_re "x")
                (str.to_re "y")
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
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w12 r)))

(constraint (not (str.in_re w13 r)))

(check-synth)
