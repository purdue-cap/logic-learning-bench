(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/106.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "aC")
(define-fun w2 () String "a C")
(define-fun w3 () String "a char 1")
(define-fun w4 () String "www a char")
(define-fun w5 () String "!!! e c")
(define-fun w6 () String "e c 123")
(define-fun w7 () String "2 @ i L")
(define-fun w8 () String "123")
(define-fun w9 () String "###")
(define-fun w10 () String "B c")
(define-fun w11 () String "a")
(define-fun w12 () String "ch a")
(define-fun w13 () String "!! e")

(define-fun w14 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "!")
                (str.to_re "#")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "@")
                (str.to_re "B")
                (str.to_re "C")
                (str.to_re "L")
                (str.to_re "a")
                (str.to_re "c")
                (str.to_re "e")
                (str.to_re "h")
                (str.to_re "i")
                (str.to_re "r")
                (str.to_re "w")
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
