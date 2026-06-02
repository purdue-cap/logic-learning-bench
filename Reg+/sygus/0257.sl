(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/60.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "abc#123")
(define-fun w2 () String "a%scsd")
(define-fun w3 () String "abacvfrdfrgthgfrthgf22222")
(define-fun w4 () String "abc453&")
(define-fun w5 () String "ab")
(define-fun w6 () String "123%")
(define-fun w7 () String "abacvfrdfrgthgfrthgf222222")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "#")
                (str.to_re "%")
                (str.to_re "&")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "d")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "h")
                (str.to_re "r")
                (str.to_re "s")
                (str.to_re "t")
                (str.to_re "v")
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
(constraint (not (str.in_re w4 r)))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))

(check-synth)
