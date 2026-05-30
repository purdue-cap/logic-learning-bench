(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/46.
; Natural language: I want a regular expression for decimal input, which can take 4 digits before decimal or comma and 2 digits after decimal/comma. 5 digit number without decimal is invalid.Validation show also include comma along with decimal.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "1"
)
(define-fun w2 () String
    "1111"
)
(define-fun w3 () String
    "2222.56"
)
(define-fun w4 () String
    "9999.55"
)
(define-fun w5 () String
    "0.99"
)
(define-fun w6 () String
    "9999.5"
)
(define-fun w7 () String
    "88888"
)
(define-fun w8 () String
    "8.888"
)
(define-fun w9 () String
    "99999 "
)
(define-fun w10 () String
    "9.369"
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
(constraint (str.in_re w6 regex))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))

(check-synth)
