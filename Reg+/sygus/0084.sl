(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/86.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "aaa")
(define-fun w2 () String "aAa")
(define-fun w3 () String "aA!")
(define-fun w4 () String "bA!n")
(define-fun w5 () String "lol!")
(define-fun w6 () String "ooo")
(define-fun w7 () String "nof~")
(define-fun w8 () String "Aa")
(define-fun w9 () String "Aba")
(define-fun w10 () String "Bb")
(define-fun w11 () String "No")
(define-fun w12 () String "N~")
(define-fun w13 () String "X,")

(define-fun w14 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re ",")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "N")
                (str.to_re "X")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "f")
                (str.to_re "l")
                (str.to_re "n")
                (str.to_re "o")
                (str.to_re "~")
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
