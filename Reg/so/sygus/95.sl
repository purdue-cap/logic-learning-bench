(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/95.
; Natural language: I am writing a regular expression to validate a zip code, where it should have exactly a length of 6 characters, the first 3 characters are digits, the last 2 also, but the character 4 should be a space.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "123 45"
)
(define-fun w2 () String
    "123456"
)
(define-fun w3 () String
    "123 4"
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
(constraint (not (str.in_re w2 regex)))
(constraint (not (str.in_re w3 regex)))

(check-synth)
