(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/145.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a!")
(define-fun w2 () String "aa")
(define-fun w3 () String "a@")
(define-fun w4 () String "E!")
(define-fun w5 () String "Eg")
(define-fun w6 () String "E@")
(define-fun w7 () String "Ie!@")
(define-fun w8 () String "q!")
(define-fun w9 () String "r@")
(define-fun w10 () String "rg")
(define-fun w11 () String "1r")
(define-fun w12 () String "!")
(define-fun w13 () String "@")
(define-fun w14 () String "a")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "1")
                (str.to_re "@")
                (str.to_re "E")
                (str.to_re "I")
                (str.to_re "a")
                (str.to_re "e")
                (str.to_re "g")
                (str.to_re "q")
                (str.to_re "r")
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
