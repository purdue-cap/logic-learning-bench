(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/39.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a!A")
(define-fun w2 () String "aa!B")
(define-fun w3 () String "a!!C")
(define-fun w4 () String "a~!Da")
(define-fun w5 () String "a!Aa")
(define-fun w6 () String "aA!cA")
(define-fun w7 () String "z!@A")
(define-fun w8 () String "a!")
(define-fun w9 () String "!")
(define-fun w10 () String "!C")
(define-fun w11 () String "a~")
(define-fun w12 () String "C!")
(define-fun w13 () String "Zz!")
(define-fun w14 () String "a!a")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "@")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "C")
                (str.to_re "D")
                (str.to_re "Z")
                (str.to_re "a")
                (str.to_re "c")
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
