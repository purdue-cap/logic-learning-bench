(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/92.
; Natural language: lines with only 7 or more characters
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "asdfgjkls"
)
(define-fun w2 () String
    "1234567"
)
(define-fun w3 () String
    "12345556"
)
(define-fun w4 () String
    "1232435345"
)
(define-fun w5 () String
    "afdfadsfasdfasd"
)
(define-fun w6 () String
    "adfasdfasfadsfasdf"
)
(define-fun w7 () String
    "afdsafsafadsfadsfasdfadse"
)
(define-fun w8 () String
    "a"
)
(define-fun w9 () String
    "aa"
)
(define-fun w10 () String
    "aaa"
)
(define-fun w11 () String
    "aaaa"
)
(define-fun w12 () String
    "aaaaa"
)
(define-fun w13 () String
    "aaaaaa"
)
(define-fun w14 () String
    "34234"
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
