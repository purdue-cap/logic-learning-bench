(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/51.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "1")
(define-fun w2 () String "1/2")
(define-fun w3 () String "Some_text")
(define-fun w4 () String "some/test")
(define-fun w5 () String "Some")
(define-fun w6 () String "2///2")
(define-fun w7 () String "/12")
(define-fun w8 () String "1/2/")
(define-fun w9 () String "1.2/3")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ".")
                (str.to_re "/")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "S")
                (str.to_re "_")
                (str.to_re "e")
                (str.to_re "m")
                (str.to_re "o")
                (str.to_re "s")
                (str.to_re "t")
                (str.to_re "x")
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
(constraint (not (str.in_re w3 r)))
(constraint (not (str.in_re w4 r)))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))

(check-synth)
