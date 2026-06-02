(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/125.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a")
(define-fun w2 () String "asd")
(define-fun w3 () String "aedtf")
(define-fun w4 () String "7as")
(define-fun w5 () String "875!s")
(define-fun w6 () String "goo")
(define-fun w7 () String "doog")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "5")
                (str.to_re "7")
                (str.to_re "8")
                (str.to_re "a")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "o")
                (str.to_re "s")
                (str.to_re "t")
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
