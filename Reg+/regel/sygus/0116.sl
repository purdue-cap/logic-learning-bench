(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/121.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "z!")
(define-fun w2 () String "zZ")
(define-fun w3 () String "aZj")
(define-fun w4 () String "z!gjf")
(define-fun w5 () String "hCCd")
(define-fun w6 () String "jWa")
(define-fun w7 () String "mAeg42")
(define-fun w8 () String "!")
(define-fun w9 () String "!sd")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "2")
                (str.to_re "4")
                (str.to_re "A")
                (str.to_re "C")
                (str.to_re "W")
                (str.to_re "Z")
                (str.to_re "a")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "h")
                (str.to_re "j")
                (str.to_re "m")
                (str.to_re "s")
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

(check-synth)
