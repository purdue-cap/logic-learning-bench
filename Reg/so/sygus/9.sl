(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/9.
; Natural language: I want this value to accept up to 18 digits before the decimal, and 1 digit after. With the decimal point and the digit after it being optional
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "1.0"
)
(define-fun w2 () String
    "100.1"
)
(define-fun w3 () String
    "123456789123456789.2"
)
(define-fun w4 () String
    "123456789123456789"
)
(define-fun w5 () String
    "1.01"
)
(define-fun w6 () String
    "1234567891234567891"
)
(define-fun w7 () String
    "1234567891234567891.0"
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
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))

(check-synth)
