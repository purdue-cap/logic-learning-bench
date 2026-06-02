(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/10.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "a")
(define-fun w2 () String "1")
(define-fun w3 () String ",")
(define-fun w4 () String "ab")
(define-fun w5 () String "a12")
(define-fun w6 () String "a',")
(define-fun w7 () String " ")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "'")
                (str.to_re ",")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "a")
                (str.to_re "b")
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

(check-synth)
