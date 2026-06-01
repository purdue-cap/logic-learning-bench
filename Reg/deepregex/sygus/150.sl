(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/150.
; Natural language: lines which are ending with a lower-case letter followed by the string "!" or a number
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "a!"
)
(define-fun w2 () String
    "a4"
)
(define-fun w3 () String
    "Gg5"
)
(define-fun w4 () String
    "Fh!"
)
(define-fun w5 () String
    "3Dg6"
)
(define-fun w6 () String
    "d3h#4!"
)
(define-fun w7 () String
    "23dT2!"
)
(define-fun w8 () String
    "QD!"
)
(define-fun w9 () String
    "1!"
)
(define-fun w10 () String
    "5678!"
)
(define-fun w11 () String
    "3a"
)
(define-fun w12 () String
    "!hyk"
)
(define-fun w13 () String
    "gfds"
)
(define-fun w14 () String
    "h"
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
