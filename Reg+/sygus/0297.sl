(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/101.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "A123")
(define-fun w2 () String "B345")
(define-fun w3 () String "C234")
(define-fun w4 () String "B986")
(define-fun w5 () String "D123")
(define-fun w6 () String "A12")
(define-fun w7 () String "A123 hello")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "8")
                (str.to_re "9")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "C")
                (str.to_re "D")
                (str.to_re "e")
                (str.to_re "h")
                (str.to_re "l")
                (str.to_re "o")
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
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))

(check-synth)
