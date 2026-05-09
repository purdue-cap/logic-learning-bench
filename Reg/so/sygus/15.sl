(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/15.
; Natural language: i need a Regular that validate Decimal (18,3) this mean max number of digits before comma is 15 and accept 3 numbers after comma . 18 precision 3 scale.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "123456789.123"
)
(define-fun w2 () String
    "123456789123456.12"
)
(define-fun w3 () String
    "12345.1"
)
(define-fun w4 () String
    "123456789123456"
)
(define-fun w5 () String
    "4"
)
(define-fun w6 () String
    "452"
)
(define-fun w7 () String
    "1234567891234567"
)
(define-fun w8 () String
    "123.1234"
)
(define-fun w9 () String
    "1.12345"
)
(define-fun w10 () String
    ".1234"
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
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))

(check-synth)
