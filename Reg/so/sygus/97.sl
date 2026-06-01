(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/97.
; Natural language: start and finish with a percentage sign and can contain any number of characters in-between
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "%%"
)
(define-fun w2 () String
    "% %"
)
(define-fun w3 () String
    "%a%"
)
(define-fun w4 () String
    "%1%"
)
(define-fun w5 () String
    "% a1a %"
)
(define-fun w6 () String
    "%%%"
)
(define-fun w7 () String
    " %%"
)
(define-fun w8 () String
    "%% "
)
(define-fun w9 () String
    " % "
)
(define-fun w10 () String
    " a%%b "
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
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))

(check-synth)
