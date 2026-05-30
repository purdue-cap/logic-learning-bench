(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/100.
; Natural language: The string must be 9 characters long, starting with "SO-" (case insensitive eg "So-", "so-", "sO-" and "SO-") followed by 6 numbers.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "SO-123456"
)
(define-fun w2 () String
    "So-123456"
)
(define-fun w3 () String
    "sO-123456"
)
(define-fun w4 () String
    "so-123456"
)
(define-fun w5 () String
    "SO-12d456"
)
(define-fun w6 () String
    "SO-1234567"
)
(define-fun w7 () String
    "QR-123456"
)
(define-fun w8 () String
    "SO-45k789"
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
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))

(check-synth)
