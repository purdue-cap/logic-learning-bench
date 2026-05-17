(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/65.
; Natural language: I'm trying to make a regular expression that validates positive natural numbers from three digits to 9 digits and separates the thousand unit and the million unit with a point
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "175"
)
(define-fun w2 () String
    "1.250"
)
(define-fun w3 () String
    "14.365"
)
(define-fun w4 () String
    "145.985"
)
(define-fun w5 () String
    "1.562.745"
)
(define-fun w6 () String
    "17.487.984"
)
(define-fun w7 () String
    "999.999.999"
)
(define-fun w8 () String
    "176.57.117"
)
(define-fun w9 () String
    "176.257.7"
)
(define-fun w10 () String
    "176.257.17"
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
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))

(check-synth)
