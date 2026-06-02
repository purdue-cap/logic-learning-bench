(set-logic SLIA)

; Converted from benchmark/Reg/tomita/0006.sl (delis semantic format).
; Alphabet is {0,1}; no wildcards in source.
; Grammar mirrors delis RegLan theory, including re.allchar.

(define-fun w1 () String
    "01"
)
(define-fun w2 () String
    "10"
)
(define-fun w3 () String
    "000"
)
(define-fun w4 () String
    "111"
)
(define-fun w5 () String
    "0011"
)
(define-fun w6 () String
    "0101"
)
(define-fun w7 () String
    "0110"
)
(define-fun w8 () String
    "1001"
)
(define-fun w9 () String
    "1010"
)
(define-fun w10 () String
    "1100"
)
(define-fun w11 () String
    "00001"
)
(define-fun w12 () String
    "00010"
)
(define-fun w13 () String
    "00100"
)
(define-fun w14 () String
    "01000"
)
(define-fun w15 () String
    "01111"
)
(define-fun w16 () String
    "10000"
)
(define-fun w17 () String
    "10111"
)
(define-fun w18 () String
    "11011"
)
(define-fun w19 () String
    "11101"
)
(define-fun w20 () String
    "11110"
)
(define-fun w21 () String
    "0"
)
(define-fun w22 () String
    "1"
)
(define-fun w23 () String
    "00"
)
(define-fun w24 () String
    "11"
)
(define-fun w25 () String
    "001"
)
(define-fun w26 () String
    "010"
)
(define-fun w27 () String
    "011"
)
(define-fun w28 () String
    "100"
)
(define-fun w29 () String
    "101"
)
(define-fun w30 () String
    "110"
)
(define-fun w31 () String
    "0000"
)
(define-fun w32 () String
    "0001"
)
(define-fun w33 () String
    "0010"
)
(define-fun w34 () String
    "0100"
)
(define-fun w35 () String
    "0111"
)
(define-fun w36 () String
    "1000"
)
(define-fun w37 () String
    "1011"
)
(define-fun w38 () String
    "1101"
)
(define-fun w39 () String
    "1110"
)
(define-fun w40 () String
    "1111"
)
(define-fun w41 () String
    "00000"
)
(define-fun w42 () String
    "00011"
)
(define-fun w43 () String
    "00101"
)
(define-fun w44 () String
    "00110"
)
(define-fun w45 () String
    "00111"
)
(define-fun w46 () String
    "01001"
)
(define-fun w47 () String
    "01010"
)
(define-fun w48 () String
    "01011"
)
(define-fun w49 () String
    "01100"
)
(define-fun w50 () String
    "01101"
)
(define-fun w51 () String
    "01110"
)
(define-fun w52 () String
    "10001"
)
(define-fun w53 () String
    "10010"
)
(define-fun w54 () String
    "10011"
)
(define-fun w55 () String
    "10100"
)
(define-fun w56 () String
    "10101"
)
(define-fun w57 () String
    "10110"
)
(define-fun w58 () String
    "11000"
)
(define-fun w59 () String
    "11001"
)
(define-fun w60 () String
    "11010"
)
(define-fun w61 () String
    "11100"
)
(define-fun w62 () String
    "11111"
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
(constraint (str.in_re w16 r))
(constraint (str.in_re w17 r))
(constraint (str.in_re w18 r))
(constraint (str.in_re w19 r))
(constraint (str.in_re w20 r))
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
(constraint (not (str.in_re w31 r)))
(constraint (not (str.in_re w32 r)))
(constraint (not (str.in_re w33 r)))
(constraint (not (str.in_re w34 r)))
(constraint (not (str.in_re w35 r)))
(constraint (not (str.in_re w36 r)))
(constraint (not (str.in_re w37 r)))
(constraint (not (str.in_re w38 r)))
(constraint (not (str.in_re w39 r)))
(constraint (not (str.in_re w40 r)))
(constraint (not (str.in_re w41 r)))
(constraint (not (str.in_re w42 r)))
(constraint (not (str.in_re w43 r)))
(constraint (not (str.in_re w44 r)))
(constraint (not (str.in_re w45 r)))
(constraint (not (str.in_re w46 r)))
(constraint (not (str.in_re w47 r)))
(constraint (not (str.in_re w48 r)))
(constraint (not (str.in_re w49 r)))
(constraint (not (str.in_re w50 r)))
(constraint (not (str.in_re w51 r)))
(constraint (not (str.in_re w52 r)))
(constraint (not (str.in_re w53 r)))
(constraint (not (str.in_re w54 r)))
(constraint (not (str.in_re w55 r)))
(constraint (not (str.in_re w56 r)))
(constraint (not (str.in_re w57 r)))
(constraint (not (str.in_re w58 r)))
(constraint (not (str.in_re w59 r)))
(constraint (not (str.in_re w60 r)))
(constraint (not (str.in_re w61 r)))
(constraint (not (str.in_re w62 r)))

(check-synth)
