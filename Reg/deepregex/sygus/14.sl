(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/14.
; Natural language: lines with a number preceding a capital letter 2 or more times
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "1A1A"
)
(define-fun w2 () String
    "12A1A"
)
(define-fun w3 () String
    "12A12A"
)
(define-fun w4 () String
    "0345BDE1A"
)
(define-fun w5 () String
    "1A2B3C"
)
(define-fun w6 () String
    "12A23B33DD"
)
(define-fun w7 () String
    "1A2B3C4D"
)
(define-fun w8 () String
    ""
)
(define-fun w9 () String
    " "
)
(define-fun w10 () String
    "1A"
)
(define-fun w11 () String
    "1a"
)
(define-fun w12 () String
    "a1"
)
(define-fun w13 () String
    "1A2b"
)
(define-fun w14 () String
    "2b1A"
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
(constraint (str.in_re w5 regex))
(constraint (str.in_re w6 regex))
(constraint (str.in_re w7 regex))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))
(constraint (not (str.in_re w11 regex)))
(constraint (not (str.in_re w12 regex)))
(constraint (not (str.in_re w13 regex)))
(constraint (not (str.in_re w14 regex)))

(check-synth)
