(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/29.
; Natural language: Can anyone please help me to find the suitable regular expression to validate a string that has comma separated numbers
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "1,2,3"
)
(define-fun w2 () String
    "111,234234,-09"
)
(define-fun w3 () String
    "1"
)
(define-fun w4 () String
    "1,2"
)
(define-fun w5 () String
    "2,-3"
)
(define-fun w6 () String
    "3,4,5"
)
(define-fun w7 () String
    "-1,3"
)
(define-fun w8 () String
    "123,12"
)
(define-fun w9 () String
    "121as23"
)
(define-fun w10 () String
    "123-123"
)
(define-fun w11 () String
    "123,123,aasd"
)
(define-fun w12 () String
    "12,12asd"
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
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))
(constraint (not (str.in_re w11 regex)))
(constraint (not (str.in_re w12 regex)))

(check-synth)
