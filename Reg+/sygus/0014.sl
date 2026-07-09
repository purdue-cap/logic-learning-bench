(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/14.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "1A1A")
(define-fun w2 () String "12A1A")
(define-fun w3 () String "12A12A")
(define-fun w4 () String "0345BDE1A")
(define-fun w5 () String "1A2B3C")
(define-fun w6 () String "12A23B33DD")
(define-fun w7 () String "1A2B3C4D")
(define-fun w8 () String " ")
(define-fun w9 () String "1A")
(define-fun w10 () String "1a")
(define-fun w11 () String "a1")
(define-fun w12 () String "1A2b")
(define-fun w13 () String "2b1A")

(define-fun w14 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "C")
                (str.to_re "D")
                (str.to_re "E")
                (str.to_re "a")
                (str.to_re "b")
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
