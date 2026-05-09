(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/41.
; Natural language: regular expression which validates only number and min length should be 11 and maximum 16
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "12345678901"
)
(define-fun w2 () String
    "+1234567890"
)
(define-fun w3 () String
    "+1234567890+"
)
(define-fun w4 () String
    "+123456789trtr"
)
(define-fun w5 () String
    "+trtr"
)
(define-fun w6 () String
    "+3435435435u"
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
                (str.to_re "+")
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
(constraint (not (str.in_re w3 regex)))
(constraint (not (str.in_re w4 regex)))
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))

(check-synth)
