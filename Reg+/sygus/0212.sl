(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/12.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "2X")
(define-fun w2 () String "X")
(define-fun w3 () String "3123X")
(define-fun w4 () String "23X^6")
(define-fun w5 () String "23X^66")
(define-fun w6 () String "X^")
(define-fun w7 () String "4")
(define-fun w8 () String "foobar")
(define-fun w9 () String "4X^")
(define-fun w10 () String "4X44")
(define-fun w11 () String " X")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "6")
                (str.to_re "X")
                (str.to_re "^")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "f")
                (str.to_re "o")
                (str.to_re "r")
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
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))
(constraint (not (str.in_re w10 r)))
(constraint (not (str.in_re w11 r)))

(check-synth)
