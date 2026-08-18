(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/63.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "1.1")
(define-fun w2 () String "1.1.3.4")
(define-fun w3 () String "1.0")
(define-fun w4 () String "1.1.334")
(define-fun w5 () String "1")
(define-fun w6 () String "1.")
(define-fun w7 () String "1..")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ".")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "3")
                (str.to_re "4")
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
