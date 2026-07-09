(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/78.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "3a")
(define-fun w2 () String "2,")
(define-fun w3 () String "a2,")
(define-fun w4 () String "aaa3a")
(define-fun w5 () String "nobody33a33")
(define-fun w6 () String "when2a")
(define-fun w7 () String "nope2!")
(define-fun w8 () String "a2")
(define-fun w9 () String "2")
(define-fun w10 () String "aaaa")
(define-fun w11 () String ",")
(define-fun w12 () String ",a")
(define-fun w13 () String "yes")

(define-fun w14 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re ",")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "h")
                (str.to_re "n")
                (str.to_re "o")
                (str.to_re "p")
                (str.to_re "s")
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
