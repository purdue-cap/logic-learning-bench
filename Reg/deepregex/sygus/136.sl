(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/136.
; Natural language: lines with a vowel before the string "!" and ending in a lower-case letter
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "a!l"
)
(define-fun w2 () String
    "A!d"
)
(define-fun w3 () String
    "e123!ghjk"
)
(define-fun w4 () String
    "E!567Lk"
)
(define-fun w5 () String
    "i!0j"
)
(define-fun w6 () String
    "I!!5g"
)
(define-fun w7 () String
    "O!LKJo"
)
(define-fun w8 () String
    "s!h"
)
(define-fun w9 () String
    "S!cd"
)
(define-fun w10 () String
    "a!L"
)
(define-fun w11 () String
    "al"
)
(define-fun w12 () String
    "a45ghy"
)
(define-fun w13 () String
    "E@567jk"
)
(define-fun w14 () String
    "Q234!f3r"
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
