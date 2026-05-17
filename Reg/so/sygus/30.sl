(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/30.
; Natural language: R1: it is 1 - 3 letters R2: it is a ""-"" (i know the minus is now out of date, but the customer want it that way) R3: it is 1 - 2 letters R4: it is a space R5: it is 1 - 4 numbers
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "m-a 12"
)
(define-fun w2 () String
    "abc-ab 1234"
)
(define-fun w3 () String
    "ab-ab 1234"
)
(define-fun w4 () String
    "m a 12"
)
(define-fun w5 () String
    "abc a 12"
)
(define-fun w6 () String
    "abc-abc 12"
)
(define-fun w7 () String
    "abc-ab-12"
)
(define-fun w8 () String
    "abc-ab 12345"
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
                (str.to_re " ")
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
(constraint (not (str.in_re w4 regex)))
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))

(check-synth)
