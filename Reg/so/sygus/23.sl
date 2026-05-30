(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/23.
; Natural language: I need a regular expression that can validate an input string to make sure it is a number between 1 - 30 and up to 2 decimal places.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "4"
)
(define-fun w2 () String
    "10.25"
)
(define-fun w3 () String
    "15.3"
)
(define-fun w4 () String
    "29.99"
)
(define-fun w5 () String
    "30"
)
(define-fun w6 () String
    "30.01"
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
(constraint (not (str.in_re w6 regex)))

(check-synth)
