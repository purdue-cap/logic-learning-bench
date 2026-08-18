(set-logic SLIA)

; Converted from benchmark/Reg/sipser/0002.sl (loom semantic format).
; Alphabet is {0,1}; no wildcards in source.
; Grammar mirrors loom RegLan theory, including re.allchar.

(define-fun w1 () String
    "0"
)
(define-fun w2 () String
    "10"
)
(define-fun w3 () String
    "11"
)
(define-fun w4 () String
    "000"
)
(define-fun w5 () String
    "001"
)
(define-fun w6 () String
    "010"
)
(define-fun w7 () String
    "011"
)
(define-fun w8 () String
    "1000"
)
(define-fun w9 () String
    "1001"
)
(define-fun w10 () String
    "1010"
)
(define-fun w11 () String
    "1011"
)
(define-fun w12 () String
    "1100"
)
(define-fun w13 () String
    "1101"
)
(define-fun w14 () String
    "1110"
)
(define-fun w15 () String
    "1111"
)
(define-fun w16 () String
    "1"
)
(define-fun w17 () String
    "00"
)
(define-fun w18 () String
    "01"
)
(define-fun w19 () String
    "100"
)
(define-fun w20 () String
    "101"
)
(define-fun w21 () String
    "110"
)
(define-fun w22 () String
    "111"
)
(define-fun w23 () String
    "0000"
)
(define-fun w24 () String
    "0001"
)
(define-fun w25 () String
    "0010"
)
(define-fun w26 () String
    "0011"
)
(define-fun w27 () String
    "0100"
)
(define-fun w28 () String
    "0101"
)
(define-fun w29 () String
    "0110"
)
(define-fun w30 () String
    "0111"
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
(constraint (str.in_re w3 r))
(constraint (str.in_re w4 r))
(constraint (str.in_re w5 r))
(constraint (str.in_re w6 r))
(constraint (str.in_re w7 r))
(constraint (str.in_re w8 r))
(constraint (str.in_re w9 r))
(constraint (str.in_re w10 r))
(constraint (str.in_re w11 r))
(constraint (str.in_re w12 r))
(constraint (str.in_re w13 r))
(constraint (str.in_re w14 r))
(constraint (str.in_re w15 r))
(constraint (not (str.in_re w16 r)))
(constraint (not (str.in_re w17 r)))
(constraint (not (str.in_re w18 r)))
(constraint (not (str.in_re w19 r)))
(constraint (not (str.in_re w20 r)))
(constraint (not (str.in_re w21 r)))
(constraint (not (str.in_re w22 r)))
(constraint (not (str.in_re w23 r)))
(constraint (not (str.in_re w24 r)))
(constraint (not (str.in_re w25 r)))
(constraint (not (str.in_re w26 r)))
(constraint (not (str.in_re w27 r)))
(constraint (not (str.in_re w28 r)))
(constraint (not (str.in_re w29 r)))
(constraint (not (str.in_re w30 r)))

(check-synth)
