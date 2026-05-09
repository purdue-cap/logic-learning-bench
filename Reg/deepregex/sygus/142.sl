(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/142.
; Natural language: lines with 7 times a letter
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "abcdefg"
)
(define-fun w2 () String
    "ABCDEFG"
)
(define-fun w3 () String
    "reGREte"
)
(define-fun w4 () String
    "ghjklfgh"
)
(define-fun w5 () String
    "HGFDkjhgG"
)
(define-fun w6 () String
    "tGFDdgff"
)
(define-fun w7 () String
    "HGFdfhgfd"
)
(define-fun w8 () String
    "abcdef"
)
(define-fun w9 () String
    "ABCDEF"
)
(define-fun w10 () String
    "avDFG"
)
(define-fun w11 () String
    "123457"
)
(define-fun w12 () String
    "1234567"
)
(define-fun w13 () String
    "ab1hgfD"
)
(define-fun w14 () String
    "hgfd 3s"
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
