(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/3.
; Natural language: write regular expression that allows only digits, characters like "&" "|" "." "(" ")" and spaces
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "(0.4545 && 0.567) || 456"
)
(define-fun w2 () String
    "0.456 && 0.567"
)
(define-fun w3 () String
    "9876-5-4321"
)
(define-fun w4 () String
    "9876-5-4321 (attack)"
)
(define-fun w5 () String
    "(0.4545 && 0.567) || 456 && (me)"
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
                (str.to_re "&")
                (str.to_re "(")
                (str.to_re ")")
                (str.to_re "-")
                (str.to_re ".")
                (str.to_re "|")
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
