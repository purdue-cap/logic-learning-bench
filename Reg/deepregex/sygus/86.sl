(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/86.
; Natural language: lines with a lower-case letter before vowel and character
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "aaa"
)
(define-fun w2 () String
    "aAa"
)
(define-fun w3 () String
    "aA!"
)
(define-fun w4 () String
    "bA!n"
)
(define-fun w5 () String
    "lol!"
)
(define-fun w6 () String
    "ooo"
)
(define-fun w7 () String
    "nof~"
)
(define-fun w8 () String
    "Aa"
)
(define-fun w9 () String
    ""
)
(define-fun w10 () String
    "Aba"
)
(define-fun w11 () String
    "Bb"
)
(define-fun w12 () String
    "No"
)
(define-fun w13 () String
    "N~"
)
(define-fun w14 () String
    "X,"
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
                (str.to_re ",")
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
