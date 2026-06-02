(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/17.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a")
(define-fun w2 () String "A")
(define-fun w3 () String "B")
(define-fun w4 () String "b")
(define-fun w5 () String "1")
(define-fun w6 () String "10")
(define-fun w7 () String "AB")
(define-fun w8 () String "ab")
(define-fun w9 () String "Ab")
(define-fun w10 () String ",")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ",")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "A")
                (str.to_re "B")
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
(constraint (str.in_re w1 r))
(constraint (str.in_re w1 r))
(constraint (str.in_re w1 r))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))
(constraint (not (str.in_re w10 r)))

(check-synth)
