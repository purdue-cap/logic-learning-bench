(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/59.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "%sample1%_%sample2%")
(define-fun w2 () String "%sample2%%sample1%")
(define-fun w3 () String "1_abc")
(define-fun w4 () String "%sample2%%sample1%_%sample1%_%sample1%")
(define-fun w5 () String "%sampleee1%")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "%")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "_")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "e")
                (str.to_re "l")
                (str.to_re "m")
                (str.to_re "p")
                (str.to_re "s")
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
(constraint (not (str.in_re w5 r)))

(check-synth)
