(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/22.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "Foo")
(define-fun w2 () String "Hello World")
(define-fun w3 () String "Hello-world")
(define-fun w4 () String "Bigsby Platt-slatt")
(define-fun w5 () String "foo")
(define-fun w6 () String "Hello world")
(define-fun w7 () String "Hello-World")
(define-fun w8 () String "33333333333")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "-")
                (str.to_re "3")
                (str.to_re "B")
                (str.to_re "F")
                (str.to_re "H")
                (str.to_re "P")
                (str.to_re "W")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "i")
                (str.to_re "l")
                (str.to_re "o")
                (str.to_re "r")
                (str.to_re "s")
                (str.to_re "t")
                (str.to_re "w")
                (str.to_re "y")
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

(check-synth)
