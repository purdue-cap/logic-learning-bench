(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/140.
; Natural language: lines with number followed by lower-case letter , 5 or more times
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "1a2b3c4d5e"
)
(define-fun w2 () String
    "5b3d2h7f2f5h"
)
(define-fun w3 () String
    "8g4h2k7l7c4h2d"
)
(define-fun w4 () String
    "1a4f9h9h6j0k0l3"
)
(define-fun w5 () String
    "67d2g4h2k22l"
)
(define-fun w6 () String
    "3h543j2l63j3k7b"
)
(define-fun w7 () String
    "23f4dg26hj8g0g6k"
)
(define-fun w8 () String
    "1a2b3c4d"
)
(define-fun w9 () String
    "9L3G7h9l0g"
)
(define-fun w10 () String
    "1a2b3C4d5e"
)
(define-fun w11 () String
    "123478"
)
(define-fun w12 () String
    "asdfgh"
)
(define-fun w13 () String
    "d4g4l0h7s2"
)
(define-fun w14 () String
    "g86hjk678kjh6"
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
