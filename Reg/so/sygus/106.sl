(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/106.
; Natural language: R1: The string alphabet is limited to ""A"", ""T"", ""C"",""G"", ""N"" and its length must be at least 1 and at most 64 long R2: The integer must be within 0 to 9, i.e. length must be 1
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "ACCCGTTNNGTCCGGA3"
)
(define-fun w2 () String
    "ACCCGTTNNGTCCGGATTGAANNGT9"
)
(define-fun w3 () String
    "TTGGACCNAC0"
)
(define-fun w4 () String
    "BACGGTA0"
)
(define-fun w5 () String
    "ACGGTA0"
)
(define-fun w6 () String
    "TTGGACCNACACCCGTTNNGTCCGGATTGAANNGTTTGGACCNACACCCGTTNNGTCCGGATTGAANNGTTTGGACCNACACCCGTTNNGTCCGGATTGAANNGT2"
)

(synth-fun r () RegLan
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

(check-synth)
