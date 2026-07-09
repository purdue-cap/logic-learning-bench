(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/16.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a")
(define-fun w2 () String "e")
(define-fun w3 () String "b")
(define-fun w4 () String "A")
(define-fun w5 () String "W")
(define-fun w6 () String "1")
(define-fun w7 () String "@")
(define-fun w8 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "1")
                (str.to_re "@")
                (str.to_re "A")
                (str.to_re "W")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "e")
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

(constraint (not (str.in_re w1 r)))
(constraint (not (str.in_re w2 r)))
(constraint (not (str.in_re w3 r)))
(constraint (not (str.in_re w4 r)))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (str.in_re w8 r))

(check-synth)
