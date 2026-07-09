(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/76.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "aaab")
(define-fun w2 () String "abab")
(define-fun w3 () String "aCc?")
(define-fun w4 () String "acc,")
(define-fun w5 () String "zzga")
(define-fun w6 () String "abc!")
(define-fun w7 () String "lol~")
(define-fun w8 () String "a?a?")
(define-fun w9 () String "???")
(define-fun w10 () String "aaa")
(define-fun w11 () String "lo?l")
(define-fun w12 () String "ya!y")
(define-fun w13 () String "   ")

(define-fun w14 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "!")
                (str.to_re ",")
                (str.to_re "?")
                (str.to_re "C")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "g")
                (str.to_re "l")
                (str.to_re "o")
                (str.to_re "y")
                (str.to_re "z")
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
