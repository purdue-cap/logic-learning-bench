(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/73.
; Natural language: lines with words with ending with character , 7 or more times
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "ssjwiwo"
)
(define-fun w2 () String
    "yy asudfo oaf"
)
(define-fun w3 () String
    "ZHFj!!sh"
)
(define-fun w4 () String
    "hdI@@(#KF"
)
(define-fun w5 () String
    "!!!AAABBcd"
)
(define-fun w6 () String
    "!!!sd9fs89d8f98sdf"
)
(define-fun w7 () String
    "FFF!!!!CCC"
)
(define-fun w8 () String
    "a!sa"
)
(define-fun w9 () String
    ""
)
(define-fun w10 () String
    "Z!@d13"
)
(define-fun w11 () String
    "13aCs"
)
(define-fun w12 () String
    "Aa"
)
(define-fun w13 () String
    "C3F"
)
(define-fun w14 () String
    "!!w2B"
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
                (str.to_re "!")
                (str.to_re "#")
                (str.to_re "(")
                (str.to_re "@")
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
