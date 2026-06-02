(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/22.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a")
(define-fun w2 () String "b")
(define-fun w3 () String "e")
(define-fun w4 () String "o")
(define-fun w5 () String "u")
(define-fun w6 () String "1")
(define-fun w7 () String "CABB1CCD")
(define-fun w8 () String "B")
(define-fun w9 () String ",")
(define-fun w10 () String "'")
(define-fun w11 () String "!")
(define-fun w12 () String "&")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "&")
                (str.to_re "'")
                (str.to_re ",")
                (str.to_re "1")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "C")
                (str.to_re "D")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "e")
                (str.to_re "o")
                (str.to_re "u")
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

(check-synth)
