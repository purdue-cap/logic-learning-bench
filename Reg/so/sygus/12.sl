(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/12.
; Natural language: optional number of digits followed by an "X" and an optional ("^" followed by one or more digits)
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "2X"
)
(define-fun w2 () String
    "X"
)
(define-fun w3 () String
    "3123X"
)
(define-fun w4 () String
    "23X^6"
)
(define-fun w5 () String
    "23X^66"
)
(define-fun w6 () String
    "X^"
)
(define-fun w7 () String
    "4"
)
(define-fun w8 () String
    "foobar"
)
(define-fun w9 () String
    "4X^"
)
(define-fun w10 () String
    "4X44"
)
(define-fun w11 () String
    " X"
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
                (str.to_re "^")
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
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))
(constraint (not (str.in_re w11 regex)))

(check-synth)
