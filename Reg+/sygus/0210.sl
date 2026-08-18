(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/10.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "%123")
(define-fun w2 () String "%1234")
(define-fun w3 () String "12%3")
(define-fun w4 () String "abc%")
(define-fun w5 () String "abc")
(define-fun w6 () String "A")
(define-fun w7 () String "ABC")
(define-fun w8 () String "%")
(define-fun w9 () String "%12")
(define-fun w10 () String "%%%")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "%")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "C")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
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

(check-synth)
