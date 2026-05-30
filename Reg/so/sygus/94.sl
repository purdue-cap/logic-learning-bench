(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/94.
; Natural language: I'm trying to write a regular expression to validate a number that is either just a 0 OR at least 1000 and that also allows a comma for a thousand separator.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "0"
)
(define-fun w2 () String
    "1000"
)
(define-fun w3 () String
    "50000"
)
(define-fun w4 () String
    "1,000"
)
(define-fun w5 () String
    "50,000"
)
(define-fun w6 () String
    "99,992,001"
)
(define-fun w7 () String
    "00"
)
(define-fun w8 () String
    "0001"
)
(define-fun w9 () String
    "999"
)
(define-fun w10 () String
    "1,1,00"
)
(define-fun w11 () String
    "1.000.000"
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
                (str.to_re ",")
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
(constraint (not (str.in_re w11 regex)))

(check-synth)
