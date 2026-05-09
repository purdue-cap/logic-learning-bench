(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/59.
; Natural language: We like to validate following with Regex: bulletpoint string may contain 0 or more alphabets, digits, underscore OR bulletpoint string may contain literals "%sample1%" or "%sample2%" (0 or more times in any order)
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "%sample1%_%sample2%"
)
(define-fun w2 () String
    "%sample2%%sample1%"
)
(define-fun w3 () String
    "1_abc"
)
(define-fun w4 () String
    "%sample2%%sample1%_%sample1%_%sample1%"
)
(define-fun w5 () String
    "%sampleee1%"
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
                (str.to_re "%")
                (str.to_re "_")
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

(check-synth)
