(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/45.
; Natural language: I need a regular expression that only validates UK mobile numbers. A UK mobile number can be between 10-14 digits and either starts with "07", or omits the "0" and starts with "447". Importantly, if the user adds "+44" it should be rejected.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "07111111111"
)
(define-fun w2 () String
    "447111111111"
)
(define-fun w3 () String
    "+4471111111111"
)
(define-fun w4 () String
    "021929182711"
)
(define-fun w5 () String
    "00701029182"
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

(check-synth)
