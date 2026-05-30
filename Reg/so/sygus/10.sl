(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/10.
; Natural language: The value should not contain only "%" and if there is a "%" the length should be more than 3 characters including "%". "%" can be anywhere in the string (dot is included)
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "%123"
)
(define-fun w2 () String
    "%1234"
)
(define-fun w3 () String
    "12%3"
)
(define-fun w4 () String
    "abc%"
)
(define-fun w5 () String
    "abc"
)
(define-fun w6 () String
    "A"
)
(define-fun w7 () String
    "ABC"
)
(define-fun w8 () String
    "%"
)
(define-fun w9 () String
    "%12"
)
(define-fun w10 () String
    "%%%"
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
                (str.to_re "%")
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
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))

(check-synth)
