(set-logic SLIA)

; Converted from benchmark/Reg/sipser/0004.sl (loom semantic format).
; Alphabet is {0,1}; no wildcards in source.
; Grammar mirrors loom RegLan theory, including re.allchar.

(define-fun w1 () String
    "0"
)
(define-fun w2 () String
    "1"
)
(define-fun w3 () String
    "00"
)
(define-fun w4 () String
    "01"
)
(define-fun w5 () String
    "10"
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
(define-fun w15 () String
    "0000"
)
(define-fun w16 () String
    "0001"
)
(define-fun w17 () String
    "0010"
)
(define-fun w18 () String
    "0011"
)
(define-fun w19 () String
    "0100"
)
(define-fun w20 () String
    "0101"
)
(define-fun w21 () String
    "0110"
)
(define-fun w22 () String
    "0111"
)
(define-fun w23 () String
    "1000"
)
(define-fun w24 () String
    "1001"
)
(define-fun w25 () String
    "1010"
)
(define-fun w26 () String
    "1011"
)
(define-fun w27 () String
    "1100"
)
(define-fun w28 () String
    "1101"
)
(define-fun w29 () String
    "1110"
)
(define-fun w30 () String
    "1111"
)
(define-fun w31 () String
    "00000"
)
(define-fun w32 () String
    "00001"
)
(define-fun w33 () String
    "00010"
)
(define-fun w34 () String
    "00011"
)
(define-fun w35 () String
    "00100"
)
(define-fun w36 () String
    "00101"
)
(define-fun w37 () String
    "00110"
)
(define-fun w38 () String
    "00111"
)
(define-fun w39 () String
    "01000"
)
(define-fun w40 () String
    "01001"
)
(define-fun w41 () String
    "01010"
)
(define-fun w42 () String
    "01011"
)
(define-fun w43 () String
    "01100"
)
(define-fun w44 () String
    "01101"
)
(define-fun w45 () String
    "01110"
)
(define-fun w46 () String
    "01111"
)
(define-fun w47 () String
    "10000"
)
(define-fun w48 () String
    "10001"
)
(define-fun w49 () String
    "10010"
)
(define-fun w50 () String
    "10011"
)
(define-fun w51 () String
    "10100"
)
(define-fun w52 () String
    "10101"
)
(define-fun w53 () String
    "10110"
)
(define-fun w54 () String
    "10111"
)
(define-fun w55 () String
    "11000"
)
(define-fun w56 () String
    "11001"
)
(define-fun w57 () String
    "11010"
)
(define-fun w58 () String
    "11011"
)
(define-fun w59 () String
    "11100"
)
(define-fun w60 () String
    "11101"
)
(define-fun w61 () String
    "11110"
)
(define-fun w62 () String
    "11111"
)
(define-fun w63 () String
    "000000"
)
(define-fun w64 () String
    "000001"
)
(define-fun w65 () String
    "000010"
)
(define-fun w66 () String
    "000011"
)
(define-fun w67 () String
    "000100"
)
(define-fun w68 () String
    "000101"
)
(define-fun w69 () String
    "000110"
)
(define-fun w70 () String
    "000111"
)
(define-fun w71 () String
    "001000"
)
(define-fun w72 () String
    "001001"
)
(define-fun w73 () String
    "001010"
)
(define-fun w74 () String
    "001011"
)
(define-fun w75 () String
    "001100"
)
(define-fun w76 () String
    "001101"
)
(define-fun w77 () String
    "001110"
)
(define-fun w78 () String
    "001111"
)
(define-fun w79 () String
    "010000"
)
(define-fun w80 () String
    "010001"
)
(define-fun w81 () String
    "010010"
)
(define-fun w82 () String
    "010011"
)
(define-fun w83 () String
    "010100"
)
(define-fun w84 () String
    "010101"
)
(define-fun w85 () String
    "010110"
)
(define-fun w86 () String
    "010111"
)
(define-fun w87 () String
    "011000"
)
(define-fun w88 () String
    "011001"
)
(define-fun w89 () String
    "011010"
)
(define-fun w90 () String
    "011011"
)
(define-fun w91 () String
    "011100"
)
(define-fun w92 () String
    "011101"
)
(define-fun w93 () String
    "011110"
)
(define-fun w94 () String
    "011111"
)
(define-fun w95 () String
    "100000"
)
(define-fun w96 () String
    "100001"
)
(define-fun w97 () String
    "100010"
)
(define-fun w98 () String
    "100011"
)
(define-fun w99 () String
    "100100"
)
(define-fun w100 () String
    "100101"
)
(define-fun w101 () String
    "100110"
)
(define-fun w102 () String
    "100111"
)
(define-fun w103 () String
    "101000"
)
(define-fun w104 () String
    "101001"
)
(define-fun w105 () String
    "101010"
)
(define-fun w106 () String
    "101011"
)
(define-fun w107 () String
    "101100"
)
(define-fun w108 () String
    "101101"
)
(define-fun w109 () String
    "101110"
)
(define-fun w110 () String
    "101111"
)
(define-fun w111 () String
    "110000"
)
(define-fun w112 () String
    "110001"
)
(define-fun w113 () String
    "110010"
)
(define-fun w114 () String
    "110011"
)
(define-fun w115 () String
    "110100"
)
(define-fun w116 () String
    "110101"
)
(define-fun w117 () String
    "110110"
)
(define-fun w118 () String
    "110111"
)
(define-fun w119 () String
    "111000"
)
(define-fun w120 () String
    "111001"
)
(define-fun w121 () String
    "111010"
)
(define-fun w122 () String
    "111011"
)
(define-fun w123 () String
    "111100"
)
(define-fun w124 () String
    "111101"
)
(define-fun w125 () String
    "111110"
)
(define-fun w126 () String
    "111111"
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
(constraint (str.in_re w21 r))
(constraint (str.in_re w22 r))
(constraint (str.in_re w23 r))
(constraint (str.in_re w24 r))
(constraint (str.in_re w25 r))
(constraint (str.in_re w26 r))
(constraint (str.in_re w27 r))
(constraint (str.in_re w28 r))
(constraint (str.in_re w29 r))
(constraint (str.in_re w30 r))
(constraint (str.in_re w31 r))
(constraint (str.in_re w32 r))
(constraint (str.in_re w33 r))
(constraint (str.in_re w34 r))
(constraint (str.in_re w35 r))
(constraint (str.in_re w36 r))
(constraint (str.in_re w37 r))
(constraint (str.in_re w38 r))
(constraint (str.in_re w39 r))
(constraint (str.in_re w40 r))
(constraint (str.in_re w41 r))
(constraint (str.in_re w42 r))
(constraint (str.in_re w43 r))
(constraint (str.in_re w44 r))
(constraint (str.in_re w45 r))
(constraint (str.in_re w46 r))
(constraint (str.in_re w47 r))
(constraint (str.in_re w48 r))
(constraint (str.in_re w49 r))
(constraint (str.in_re w50 r))
(constraint (str.in_re w51 r))
(constraint (str.in_re w52 r))
(constraint (str.in_re w53 r))
(constraint (str.in_re w54 r))
(constraint (str.in_re w55 r))
(constraint (str.in_re w56 r))
(constraint (str.in_re w57 r))
(constraint (str.in_re w58 r))
(constraint (str.in_re w59 r))
(constraint (str.in_re w60 r))
(constraint (str.in_re w61 r))
(constraint (str.in_re w62 r))
(constraint (not (str.in_re w63 r)))
(constraint (not (str.in_re w64 r)))
(constraint (not (str.in_re w65 r)))
(constraint (not (str.in_re w66 r)))
(constraint (not (str.in_re w67 r)))
(constraint (not (str.in_re w68 r)))
(constraint (not (str.in_re w69 r)))
(constraint (not (str.in_re w70 r)))
(constraint (not (str.in_re w71 r)))
(constraint (not (str.in_re w72 r)))
(constraint (not (str.in_re w73 r)))
(constraint (not (str.in_re w74 r)))
(constraint (not (str.in_re w75 r)))
(constraint (not (str.in_re w76 r)))
(constraint (not (str.in_re w77 r)))
(constraint (not (str.in_re w78 r)))
(constraint (not (str.in_re w79 r)))
(constraint (not (str.in_re w80 r)))
(constraint (not (str.in_re w81 r)))
(constraint (not (str.in_re w82 r)))
(constraint (not (str.in_re w83 r)))
(constraint (not (str.in_re w84 r)))
(constraint (not (str.in_re w85 r)))
(constraint (not (str.in_re w86 r)))
(constraint (not (str.in_re w87 r)))
(constraint (not (str.in_re w88 r)))
(constraint (not (str.in_re w89 r)))
(constraint (not (str.in_re w90 r)))
(constraint (not (str.in_re w91 r)))
(constraint (not (str.in_re w92 r)))
(constraint (not (str.in_re w93 r)))
(constraint (not (str.in_re w94 r)))
(constraint (not (str.in_re w95 r)))
(constraint (not (str.in_re w96 r)))
(constraint (not (str.in_re w97 r)))
(constraint (not (str.in_re w98 r)))
(constraint (not (str.in_re w99 r)))
(constraint (not (str.in_re w100 r)))
(constraint (not (str.in_re w101 r)))
(constraint (not (str.in_re w102 r)))
(constraint (not (str.in_re w103 r)))
(constraint (not (str.in_re w104 r)))
(constraint (not (str.in_re w105 r)))
(constraint (not (str.in_re w106 r)))
(constraint (not (str.in_re w107 r)))
(constraint (not (str.in_re w108 r)))
(constraint (not (str.in_re w109 r)))
(constraint (not (str.in_re w110 r)))
(constraint (not (str.in_re w111 r)))
(constraint (not (str.in_re w112 r)))
(constraint (not (str.in_re w113 r)))
(constraint (not (str.in_re w114 r)))
(constraint (not (str.in_re w115 r)))
(constraint (not (str.in_re w116 r)))
(constraint (not (str.in_re w117 r)))
(constraint (not (str.in_re w118 r)))
(constraint (not (str.in_re w119 r)))
(constraint (not (str.in_re w120 r)))
(constraint (not (str.in_re w121 r)))
(constraint (not (str.in_re w122 r)))
(constraint (not (str.in_re w123 r)))
(constraint (not (str.in_re w124 r)))
(constraint (not (str.in_re w125 r)))
(constraint (not (str.in_re w126 r)))

(check-synth)
