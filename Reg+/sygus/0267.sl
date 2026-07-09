(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/71.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "10.000,50")
(define-fun w2 () String "10,000.50")
(define-fun w3 () String "anything@!#--")
(define-fun w4 () String "a.2")
(define-fun w5 () String "2,a")
(define-fun w6 () String "")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "#")
                (str.to_re ",")
                (str.to_re "-")
                (str.to_re ".")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "5")
                (str.to_re "@")
                (str.to_re "a")
                (str.to_re "g")
                (str.to_re "h")
                (str.to_re "i")
                (str.to_re "n")
                (str.to_re "t")
                (str.to_re "y")
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
(constraint (str.in_re w6 r))
(constraint (not (str.in_re w3 r)))
(constraint (not (str.in_re w4 r)))
(constraint (not (str.in_re w5 r)))

(check-synth)
