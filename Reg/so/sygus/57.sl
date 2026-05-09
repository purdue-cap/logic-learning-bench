(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/57.
; Natural language: allow only numbers, maxmium two decimals, max one comma (,) and one "-" symbol in front of the number (optional)
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "0,25"
)
(define-fun w2 () String
    "10,2"
)
(define-fun w3 () String
    "-7000"
)
(define-fun w4 () String
    "-175,33"
)
(define-fun w5 () String
    "15555555555555,99"
)
(define-fun w6 () String
    "9,999"
)
(define-fun w7 () String
    "15.03"
)
(define-fun w8 () String
    "77,77,77"
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
                (str.to_re ",")
                (str.to_re "-")
                (str.to_re ".")
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
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))

(check-synth)
