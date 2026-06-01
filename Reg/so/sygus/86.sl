(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/86.
; Natural language: a regular expression for validating a string with alphanumeric characters and dashes, while also not allowing leading or trailing dashes
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "safename"
)
(define-fun w2 () String
    "123"
)
(define-fun w3 () String
    "there-is-something-here"
)
(define-fun w4 () String
    "your-name-goes-here"
)
(define-fun w5 () String
    "a-b"
)
(define-fun w6 () String
    "a-bc-d"
)
(define-fun w7 () String
    "ab-cd-e"
)
(define-fun w8 () String
    "a-bc-de"
)
(define-fun w9 () String
    "this-is-a-test"
)
(define-fun w10 () String
    "a-b-c"
)
(define-fun w11 () String
    "1-2-3"
)
(define-fun w12 () String
    "1-2-"
)
(define-fun w13 () String
    "-something-is-up"
)
(define-fun w14 () String
    "say-what-"
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
(constraint (str.in_re w5 regex))
(constraint (str.in_re w6 regex))
(constraint (str.in_re w7 regex))
(constraint (str.in_re w8 regex))
(constraint (str.in_re w9 regex))
(constraint (str.in_re w10 regex))
(constraint (str.in_re w11 regex))
(constraint (not (str.in_re w12 regex)))
(constraint (not (str.in_re w13 regex)))
(constraint (not (str.in_re w14 regex)))

(check-synth)
