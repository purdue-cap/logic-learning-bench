(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/97.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "%%")
(define-fun w2 () String "% %")
(define-fun w3 () String "%a%")
(define-fun w4 () String "%1%")
(define-fun w5 () String "% a1a %")
(define-fun w6 () String "%%%")
(define-fun w7 () String " %%")
(define-fun w8 () String "%% ")
(define-fun w9 () String " % ")
(define-fun w10 () String " a%%b ")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "%")
                (str.to_re "1")
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
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))
(constraint (not (str.in_re w10 r)))

(check-synth)
