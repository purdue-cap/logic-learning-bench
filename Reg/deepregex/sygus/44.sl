(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/44.
; Natural language: lines with a character occuring before the string "!" , 5 or more times
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "a!!!!!"
)
(define-fun w2 () String
    "ab!!!!!!"
)
(define-fun w3 () String
    "~!!!!!!!!"
)
(define-fun w4 () String
    "a!!!!!!!!"
)
(define-fun w5 () String
    ";!!!!!!!!!!!!!!"
)
(define-fun w6 () String
    "abc1~!3452!!!!!"
)
(define-fun w7 () String
    "!!!!!!"
)
(define-fun w8 () String
    "!!!!!"
)
(define-fun w9 () String
    "abcd"
)
(define-fun w10 () String
    "!qbc"
)
(define-fun w11 () String
    "a!!!!"
)
(define-fun w12 () String
    "b!!!"
)
(define-fun w13 () String
    "?!!"
)
(define-fun w14 () String
    "a!"
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
                (str.to_re ";")
                (str.to_re "?")
                (str.to_re "~")
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
