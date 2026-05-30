(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/14.
; Natural language: write a Regular Expression validator to accept numbers only with decimal part 0 or 5 only and in range 0-5. No matter how many 0 in front or behind the numbers it can be valid.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "000000"
)
(define-fun w2 () String
    "0.0"
)
(define-fun w3 () String
    "0000."
)
(define-fun w4 () String
    "0"
)
(define-fun w5 () String
    ".50000000"
)
(define-fun w6 () String
    "00001."
)
(define-fun w7 () String
    "01.50"
)
(define-fun w8 () String
    "2.00000"
)
(define-fun w9 () String
    "2.5000"
)
(define-fun w10 () String
    "03"
)
(define-fun w11 () String
    "03.5"
)
(define-fun w12 () String
    "0004"
)
(define-fun w13 () String
    "0004.5000"
)
(define-fun w14 () String
    "00005.0"
)
(define-fun w15 () String
    "0.5"
)
(define-fun w16 () String
    "1"
)
(define-fun w17 () String
    "1.5"
)
(define-fun w18 () String
    "2"
)
(define-fun w19 () String
    "2.5"
)
(define-fun w20 () String
    "3"
)
(define-fun w21 () String
    "3.5"
)
(define-fun w22 () String
    "4"
)
(define-fun w23 () String
    "4.5"
)
(define-fun w24 () String
    "5"
)
(define-fun w25 () String
    "-1"
)
(define-fun w26 () String
    "-.5"
)
(define-fun w27 () String
    "-0"
)
(define-fun w28 () String
    "1.05"
)
(define-fun w29 () String
    "5.5"
)
(define-fun w30 () String
    "10"
)
(define-fun w31 () String
    "20"
)
(define-fun w32 () String
    "30"
)
(define-fun w33 () String
    "40"
)
(define-fun w34 () String
    "50"
)

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                re.allchar
                (re.range "0" "9")
                (re.range "a" "z")
                (re.range "A" "Z")
                (re.union (re.range "a" "z") (re.range "A" "Z"))
                (re.union (re.union (re.range "0" "9") (re.range "a" "z")) (re.range "A" "Z"))
                (re.union (re.union (re.union (re.range "0" "9") (re.range "a" "z")) (re.range "A" "Z")) (str.to_re "_"))
                (str.to_re " ")
                (re.union (re.union (re.range "0" "9") (re.range "a" "f")) (re.range "A" "F"))
                (str.to_re ".")
                (str.to_re "-")
                (re.opt Start)
                (re.+ Start)
                (re.++ Start Start)
                (re.union Start Start)
                (re.inter Start Start)
                (re.* Start)
            )
        )
    )
)

(constraint (str.in_re w1 regex))
(constraint (str.in_re w2 regex))
(constraint (str.in_re w3 regex))
(constraint (str.in_re w4 regex))
(constraint (str.in_re w5 regex))
(constraint (str.in_re w6 regex))
(constraint (str.in_re w7 regex))
(constraint (str.in_re w8 regex))
(constraint (str.in_re w9 regex))
(constraint (str.in_re w10 regex))
(constraint (str.in_re w11 regex))
(constraint (str.in_re w12 regex))
(constraint (str.in_re w13 regex))
(constraint (str.in_re w14 regex))
(constraint (str.in_re w15 regex))
(constraint (str.in_re w16 regex))
(constraint (str.in_re w17 regex))
(constraint (str.in_re w18 regex))
(constraint (str.in_re w19 regex))
(constraint (str.in_re w20 regex))
(constraint (str.in_re w21 regex))
(constraint (str.in_re w22 regex))
(constraint (str.in_re w23 regex))
(constraint (str.in_re w24 regex))
(constraint (not (str.in_re w25 regex)))
(constraint (not (str.in_re w26 regex)))
(constraint (not (str.in_re w27 regex)))
(constraint (not (str.in_re w28 regex)))
(constraint (not (str.in_re w29 regex)))
(constraint (not (str.in_re w30 regex)))
(constraint (not (str.in_re w31 regex)))
(constraint (not (str.in_re w32 regex)))
(constraint (not (str.in_re w33 regex)))
(constraint (not (str.in_re w34 regex)))

(check-synth)
