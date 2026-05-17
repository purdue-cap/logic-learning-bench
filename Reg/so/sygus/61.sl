(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/61.
; Natural language: write a regular expression for validating a organisation name which allows alphanumeric as the starting characters and only special characters like ""."", ""-"", ""#"" and ""&"".
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "Hercules.Cycle"
)
(define-fun w2 () String
    "Herbal&Product"
)
(define-fun w3 () String
    "Welcome@123"
)
(define-fun w4 () String
    "&Hercules"
)
(define-fun w5 () String
    "Colgate!()"
)
(define-fun w6 () String
    ".Youtube"
)
(define-fun w7 () String
    "@Incule"
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
                (str.to_re "&")
                (str.to_re "@")
                (str.to_re "!")
                (str.to_re "(")
                (str.to_re ")")
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

(check-synth)
