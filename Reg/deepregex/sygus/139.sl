(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/139.
; Natural language: lines starting with string "!" before number
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "!abc1"
)
(define-fun w2 () String
    "!2"
)
(define-fun w3 () String
    "!f3d"
)
(define-fun w4 () String
    "!kD2"
)
(define-fun w5 () String
    "!fd%2"
)
(define-fun w6 () String
    "!tEr5"
)
(define-fun w7 () String
    "!45gE"
)
(define-fun w8 () String
    "1"
)
(define-fun w9 () String
    "abc1"
)
(define-fun w10 () String
    "dF3s"
)
(define-fun w11 () String
    "nBv"
)
(define-fun w12 () String
    "fdR!"
)
(define-fun w13 () String
    "576"
)
(define-fun w14 () String
    "sd!2"
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
                (str.to_re "!")
                (str.to_re "%")
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
