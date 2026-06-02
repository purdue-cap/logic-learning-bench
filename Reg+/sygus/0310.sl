(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/114.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "1566")
(define-fun w2 () String "1566-02")
(define-fun w3 () String "1566-45")
(define-fun w4 () String "1566-AC")
(define-fun w5 () String "1566 ")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "-")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "A")
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
