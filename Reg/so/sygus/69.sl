(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/69.
; Natural language: I would like to validate a string format that should only contain only numbers with also following conditions both satisfied:  If it is a integer number, the maximum number of digits is 5. If it is a number with decimal (or decimal fraction), the maximum digits after decimal mark is two. NOTE: value use comma or dot (""."") as decimal point. Please bear in mind that both of the two conditions have to be satisfied"
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "12345"
)
(define-fun w2 () String
    "10,23"
)
(define-fun w3 () String
    "123456"
)
(define-fun w4 () String
    "10,234"
)
(define-fun w5 () String
    "123456,12"
)
(define-fun w6 () String
    "3,345"
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
                (str.to_re ",")
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
(constraint (not (str.in_re w3 regex)))
(constraint (not (str.in_re w4 regex)))
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))

(check-synth)
