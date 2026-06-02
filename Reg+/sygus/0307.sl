(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/111.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "aa")
(define-fun w2 () String "aaaaa")
(define-fun w3 () String "a.")
(define-fun w4 () String "a-a")
(define-fun w5 () String "a a")
(define-fun w6 () String "a")
(define-fun w7 () String "aa.aa.")
(define-fun w8 () String "aa-")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "-")
                (str.to_re ".")
                (str.to_re "a")
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
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))

(check-synth)
