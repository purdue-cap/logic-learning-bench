(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/99.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "ABC.123*")
(define-fun w2 () String "*ABC.123")
(define-fun w3 () String "ABC.*123")
(define-fun w4 () String "ABC.123")
(define-fun w5 () String "*ABC.123*")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "*")
                (str.to_re ".")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "C")
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
(constraint (not (str.in_re w4 r)))
(constraint (not (str.in_re w5 r)))

(check-synth)
