(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/75.
; Natural language: Need a regular expression to validate number with comma separator.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "1,5,10,55"
)
(define-fun w2 () String
    "12,34"
)
(define-fun w3 () String
    "1"
)
(define-fun w4 () String
    "1,2,3"
)
(define-fun w5 () String
    ","
)
(define-fun w6 () String
    ",34"
)
(define-fun w7 () String
    "1,,,,10"
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
(constraint (str.in_re w3 regex))
(constraint (str.in_re w4 regex))
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))

(check-synth)
