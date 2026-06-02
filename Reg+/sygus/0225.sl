(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/25.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "123,4A67,GGG,767")
(define-fun w2 () String "test")
(define-fun w3 () String "test,test")
(define-fun w4 () String "test123,Test123,test")
(define-fun w5 () String "12333,78787&*,GH778")
(define-fun w6 () String "fghkjhfdg8797<")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "&")
                (str.to_re "*")
                (str.to_re ",")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "8")
                (str.to_re "9")
                (str.to_re "<")
                (str.to_re "A")
                (str.to_re "G")
                (str.to_re "H")
                (str.to_re "T")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "h")
                (str.to_re "j")
                (str.to_re "k")
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
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))

(check-synth)
