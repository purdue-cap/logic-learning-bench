(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/72.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "ca")
(define-fun w2 () String "bec")
(define-fun w3 () String "bidf")
(define-fun w4 () String "zoggd")
(define-fun w5 () String "dutttfzxi")
(define-fun w6 () String "haffssa")
(define-fun w7 () String "ga234aa")
(define-fun w8 () String "dddddd")
(define-fun w9 () String "cc234234")
(define-fun w10 () String "e")
(define-fun w11 () String "4234ffffddd")
(define-fun w12 () String "ccczzz")
(define-fun w13 () String "4234fff")

(define-fun w14 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "h")
                (str.to_re "i")
                (str.to_re "o")
                (str.to_re "s")
                (str.to_re "t")
                (str.to_re "u")
                (str.to_re "x")
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
