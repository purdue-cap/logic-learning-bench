(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/20.
; Natural language: How can i write valid regular expression for Oracle's Number(2,2), Also digits after decimal should be either, "1" or "2" but not more than "2", also it can be optional. The number should never start with [1-9] but can start with "0".
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "0"
)
(define-fun w2 () String
    "0.00"
)
(define-fun w3 () String
    "0.12"
)
(define-fun w4 () String
    "0.14"
)
(define-fun w5 () String
    "0."
)
(define-fun w6 () String
    "1"
)
(define-fun w7 () String
    "1.00"
)
(define-fun w8 () String
    "2.00"
)
(define-fun w9 () String
    "0.000"
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
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))

(check-synth)
