(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/6.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "1:x:456")
(define-fun w2 () String "2:2:3")
(define-fun w3 () String "3:abc:123")
(define-fun w4 () String "333:abc:123456")
(define-fun w5 () String "x:1:2")
(define-fun w6 () String "1::2")
(define-fun w7 () String "1:3::x")
(define-fun w8 () String "1:2")
(define-fun w9 () String "fyz::2:1")
(define-fun w10 () String "1:3::3")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re ":")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "f")
                (str.to_re "x")
                (str.to_re "y")
                (str.to_re "z")
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
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))
(constraint (not (str.in_re w10 r)))

(check-synth)
