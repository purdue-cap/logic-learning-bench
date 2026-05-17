(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/105.
; Natural language: First part of the string can be; Min 1 Max 6 characters long. Upper case only. Second part of the string can be; Exactly two characters long but ""00"" is not accepted. So all together: It can be min 3 max 8 characters long
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "ABCDEF05"
)
(define-fun w2 () String
    "A21"
)
(define-fun w3 () String
    "C99"
)
(define-fun w4 () String
    "d12"
)
(define-fun w5 () String
    "1"
)
(define-fun w6 () String
    "A123"
)
(define-fun w7 () String
    "A1234"
)
(define-fun w8 () String
    "AB00"
)
(define-fun w9 () String
    "ABCDEFG01"
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
(constraint (not (str.in_re w4 regex)))
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))

(check-synth)
