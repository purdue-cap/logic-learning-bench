(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/170.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a")
(define-fun w2 () String "e")
(define-fun w3 () String "1")
(define-fun w4 () String "!2!")
(define-fun w5 () String "@A")
(define-fun w6 () String "B")
(define-fun w7 () String "a1")
(define-fun w8 () String " ")
(define-fun w9 () String "!")
(define-fun w10 () String ",")
(define-fun w11 () String ";;")
(define-fun w12 () String "!!")
(define-fun w13 () String "  !  ")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "!")
                (str.to_re ",")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re ";")
                (str.to_re "@")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "a")
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
