(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/116.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "l")
(define-fun w2 () String "L")
(define-fun w3 () String "l and 1")
(define-fun w4 () String "Letter")
(define-fun w5 () String "33")
(define-fun w6 () String "!a!")
(define-fun w7 () String "##")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "!")
                (str.to_re "#")
                (str.to_re "1")
                (str.to_re "3")
                (str.to_re "L")
                (str.to_re "a")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "l")
                (str.to_re "n")
                (str.to_re "r")
                (str.to_re "t")
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
