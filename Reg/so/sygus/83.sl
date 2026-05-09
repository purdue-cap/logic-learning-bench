(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/83.
; Natural language: I'm trying to validate a form using regular expressions, the conditions are: It has to be a numeric value. It CAN have up to three decimal places(0,1,2 are allowed too).It has to be divided by a comma(,).
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "1,234"
)
(define-fun w2 () String
    "2,00"
)
(define-fun w3 () String
    "5"
)
(define-fun w4 () String
    "0,1"
)
(define-fun w5 () String
    "123545,123"
)
(define-fun w6 () String
    "1,2345"
)
(define-fun w7 () String
    "2.00"
)
(define-fun w8 () String
    "56a"
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
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))

(check-synth)
