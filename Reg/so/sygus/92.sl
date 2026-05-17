(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/92.
; Natural language: I am now in need of a Reg Exp (for validation putsposes) that checks that the user enters a number according to the following rules. no alpha characters. can have decimal. can have commas for the thousands, but the commas must be correctly placed
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "1.23"
)
(define-fun w2 () String
    "100"
)
(define-fun w3 () String
    "1,234"
)
(define-fun w4 () String
    "1234"
)
(define-fun w5 () String
    "1,234.56"
)
(define-fun w6 () String
    "0.56"
)
(define-fun w7 () String
    "1,234,567.89"
)
(define-fun w8 () String
    "1.ab"
)
(define-fun w9 () String
    "1,2345.67"
)
(define-fun w10 () String
    "0,123.45"
)
(define-fun w11 () String
    "1.24,687"
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
(constraint (str.in_re w5 regex))
(constraint (str.in_re w6 regex))
(constraint (str.in_re w7 regex))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))
(constraint (not (str.in_re w11 regex)))

(check-synth)
