(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/102.
; Natural language: I have one field that is meant to allow a 1 - 3 character string. The first character has got to be "A", "B", "C" or "Z" and may optionally be followed by up to 2 characters.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "B"
)
(define-fun w2 () String
    "B6"
)
(define-fun w3 () String
    "BB"
)
(define-fun w4 () String
    "AB"
)
(define-fun w5 () String
    "G3"
)
(define-fun w6 () String
    "A B"
)
(define-fun w7 () String
    "A 4"
)
(define-fun w8 () String
    "6HC"
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
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))

(check-synth)
