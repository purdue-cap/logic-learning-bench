(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/207.
; Natural language: lines with a capital letter , 5 or more times before a vowel in them
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "AAAAAa"
)
(define-fun w2 () String
    "BBBBBa"
)
(define-fun w3 () String
    "BBBBBBe"
)
(define-fun w4 () String
    "BBBBBoui"
)
(define-fun w5 () String
    "ABCDEFGA"
)
(define-fun w6 () String
    "ABCDEe"
)
(define-fun w7 () String
    "ABCDEFGa"
)
(define-fun w8 () String
    ""
)
(define-fun w9 () String
    " "
)
(define-fun w10 () String
    "A"
)
(define-fun w11 () String
    "a"
)
(define-fun w12 () String
    "1"
)
(define-fun w13 () String
    "AA"
)
(define-fun w14 () String
    "AAA"
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
