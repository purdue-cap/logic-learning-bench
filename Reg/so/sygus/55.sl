(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/55.
; Natural language: R1: there is at least one digit. (could be zero) R2: can not begin with more than one ""0"" R3: the number has precisely two decimal places
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "0.01"
)
(define-fun w2 () String
    "0.12"
)
(define-fun w3 () String
    "111.23"
)
(define-fun w4 () String
    "1234.56"
)
(define-fun w5 () String
    "012345.67"
)
(define-fun w6 () String
    "123.00"
)
(define-fun w7 () String
    "0.00"
)
(define-fun w8 () String
    ".12"
)
(define-fun w9 () String
    "1.1"
)
(define-fun w10 () String
    "0.0"
)
(define-fun w11 () String
    "00.00"
)
(define-fun w12 () String
    "1234."
)
(define-fun w13 () String
    "1234.567"
)
(define-fun w14 () String
    "1234"
)
(define-fun w15 () String
    "00123.45"
)
(define-fun w16 () String
    "abcd.12"
)
(define-fun w17 () String
    "12a4.56"
)
(define-fun w18 () String
    "1234.5A"
)

(synth-fun regex () RegLan
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
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))
(constraint (not (str.in_re w11 regex)))
(constraint (not (str.in_re w12 regex)))
(constraint (not (str.in_re w13 regex)))
(constraint (not (str.in_re w14 regex)))
(constraint (not (str.in_re w15 regex)))
(constraint (not (str.in_re w16 regex)))
(constraint (not (str.in_re w17 regex)))
(constraint (not (str.in_re w18 regex)))

(check-synth)
