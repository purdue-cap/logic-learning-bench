(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/30.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "m-a 12")
(define-fun w2 () String "abc-ab 1234")
(define-fun w3 () String "ab-ab 1234")
(define-fun w4 () String "m a 12")
(define-fun w5 () String "abc a 12")
(define-fun w6 () String "abc-abc 12")
(define-fun w7 () String "abc-ab-12")
(define-fun w8 () String "abc-ab 12345")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "-")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "m")
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

(check-synth)
