(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/39.
; Natural language: I am trying to use a regular expression to validate decimal values. Rules : It should allow positive numbers. It should allow max 13 numbers before decimal point. It should allow max two number after decimal. It should allow .(dot) with number like a "".5"". It should not allow the "".0""
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    ".5"
)
(define-fun w2 () String
    ".6"
)
(define-fun w3 () String
    ".1"
)
(define-fun w4 () String
    "0"
)
(define-fun w5 () String
    "0.5"
)
(define-fun w6 () String
    "1.55"
)
(define-fun w7 () String
    "1234567890123"
)
(define-fun w8 () String
    "1234567890123.5"
)
(define-fun w9 () String
    "1234567890123.00"
)
(define-fun w10 () String
    "."
)
(define-fun w11 () String
    ".0"
)
(define-fun w12 () String
    "1.234"
)
(define-fun w13 () String
    "5."
)
(define-fun w14 () String
    "12345678901234"
)
(define-fun w15 () String
    "12345678901234.56"
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
(constraint (not (str.in_re w10 regex)))
(constraint (not (str.in_re w11 regex)))
(constraint (not (str.in_re w12 regex)))
(constraint (not (str.in_re w13 regex)))
(constraint (not (str.in_re w14 regex)))
(constraint (not (str.in_re w15 regex)))

(check-synth)
