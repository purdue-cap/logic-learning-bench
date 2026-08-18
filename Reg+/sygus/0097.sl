(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/101.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a")
(define-fun w2 () String "aa")
(define-fun w3 () String "aaa")
(define-fun w4 () String "aaaa")
(define-fun w5 () String "aaaaa")
(define-fun w6 () String "aaaaaaa")
(define-fun w7 () String "aaaaaaaaaa")
(define-fun w8 () String "0")
(define-fun w9 () String "1")
(define-fun w10 () String "2")
(define-fun w11 () String "4k")
(define-fun w12 () String "56k")
(define-fun w13 () String "0z")
(define-fun w14 () String "0000")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "a")
                (str.to_re "k")
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
