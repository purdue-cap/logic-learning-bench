(set-logic SLIA)

; Converted from benchmark/Reg/sipser/0021.sl (loom semantic format).
; Alphabet is {0,1}; no wildcards in source.
; Grammar mirrors loom RegLan theory, including re.allchar.

(define-fun w1 () String
    "01"
)
(define-fun w2 () String
    "10"
)
(define-fun w3 () String
    "0"
)
(define-fun w4 () String
    "1"
)
(define-fun w5 () String
    "00"
)
(define-fun w6 () String
    "11"
)
(define-fun w7 () String
    "000"
)
(define-fun w8 () String
    "001"
)
(define-fun w9 () String
    "010"
)
(define-fun w10 () String
    "011"
)
(define-fun w11 () String
    "100"
)
(define-fun w12 () String
    "101"
)
(define-fun w13 () String
    "110"
)
(define-fun w14 () String
    "111"
)

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "0")
                (str.to_re "1")
                re.allchar
                (re.opt Start)
                (re.++ Start Start)
                (re.union Start Start)
                (re.* Start)
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
(constraint (not (str.in_re w10 r)))
(constraint (not (str.in_re w11 r)))
(constraint (not (str.in_re w12 r)))
(constraint (not (str.in_re w13 r)))
(constraint (not (str.in_re w14 r)))

(check-synth)
