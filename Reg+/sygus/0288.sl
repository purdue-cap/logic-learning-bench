(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/92.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "1.23")
(define-fun w2 () String "100")
(define-fun w3 () String "1,234")
(define-fun w4 () String "1234")
(define-fun w5 () String "1,234.56")
(define-fun w6 () String "0.56")
(define-fun w7 () String "1,234,567.89")
(define-fun w8 () String "1.ab")
(define-fun w9 () String "1,2345.67")
(define-fun w10 () String "0,123.45")
(define-fun w11 () String "1.24,687")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ",")
                (str.to_re ".")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "8")
                (str.to_re "9")
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
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))
(constraint (not (str.in_re w10 r)))
(constraint (not (str.in_re w11 r)))

(check-synth)
