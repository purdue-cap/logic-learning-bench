(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/163.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "aa")
(define-fun w2 () String "ab")
(define-fun w3 () String "aA")
(define-fun w4 () String "a1")
(define-fun w5 () String "a!")
(define-fun w6 () String "b ")
(define-fun w7 () String "b1dfefe")
(define-fun w8 () String " ")
(define-fun w9 () String "a")
(define-fun w10 () String "A")
(define-fun w11 () String "A ")
(define-fun w12 () String "AB")
(define-fun w13 () String "A1")

(define-fun w14 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "!")
                (str.to_re "1")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "f")
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
