(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/107.
; Natural language: What is the regular expression for a decimal with a precision of 2? The decimal point may be optional, and integers may also be included
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "123.12"
)
(define-fun w2 () String
    "2"
)
(define-fun w3 () String
    "56754"
)
(define-fun w4 () String
    "92929292929292.12"
)
(define-fun w5 () String
    "0.21"
)
(define-fun w6 () String
    "3.1"
)
(define-fun w7 () String
    "12.1232"
)
(define-fun w8 () String
    "2.23332"
)
(define-fun w9 () String
    "e666.76"
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

(check-synth)
