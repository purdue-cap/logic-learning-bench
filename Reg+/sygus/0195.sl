(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/203.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "abcde")
(define-fun w2 () String "bbbbb")
(define-fun w3 () String "1bbbbb")
(define-fun w4 () String "1bbbbb2")
(define-fun w5 () String "1bbbbbb2")
(define-fun w6 () String "bbbbbb")
(define-fun w7 () String "bbbbbbbbb")
(define-fun w8 () String " ")
(define-fun w9 () String "a")
(define-fun w10 () String "ab")
(define-fun w11 () String "abc")
(define-fun w12 () String "abcd")
(define-fun w13 () String "123")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "d")
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

(check-synth)
