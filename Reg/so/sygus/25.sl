(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/25.
; Natural language: I need a regular expression that can validate that a string is an alphanumeric comma delimited string.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "123,4A67,GGG,767"
)
(define-fun w2 () String
    "test"
)
(define-fun w3 () String
    "test,test"
)
(define-fun w4 () String
    "test123,Test123,test"
)
(define-fun w5 () String
    "12333,78787&*,GH778"
)
(define-fun w6 () String
    "fghkjhfdg8797<"
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
                (str.to_re "&")
                (str.to_re "*")
                (str.to_re ",")
                (str.to_re "<")
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

(check-synth)
