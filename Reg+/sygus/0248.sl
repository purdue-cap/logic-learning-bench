(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/50.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "Test")
(define-fun w2 () String "Test-hello")
(define-fun w3 () String "Test-")
(define-fun w4 () String "-Test")
(define-fun w5 () String "Test--hello")
(define-fun w6 () String "-test-")
(define-fun w7 () String "test-hello--")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "-")
                (str.to_re "T")
                (str.to_re "e")
                (str.to_re "h")
                (str.to_re "l")
                (str.to_re "o")
                (str.to_re "s")
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
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))

(check-synth)
