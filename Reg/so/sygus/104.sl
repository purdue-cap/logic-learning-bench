(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/104.
; Natural language: I have a field that should accept: bulletpoint letters [a-zA-Z] bulletpoint letters with numbers [a-zA-Z0-9] bulletpoint no special characters
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "ADFad1334"
)
(define-fun w2 () String
    "43545SFDDFdf454fgf"
)
(define-fun w3 () String
    "asdadadASD"
)
(define-fun w4 () String
    "A8"
)
(define-fun w5 () String
    "8S"
)
(define-fun w6 () String
    "B"
)
(define-fun w7 () String
    "7"
)
(define-fun w8 () String
    "12312342"
)
(define-fun w9 () String
    "sdff23424#$"
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
                (str.to_re "#")
                (str.to_re "$")
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
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))

(check-synth)
