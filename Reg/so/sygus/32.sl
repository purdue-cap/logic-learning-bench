(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/32.
; Natural language: I'm trying to devise a regular expression which will accept decimal number up to 4 digits.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "4.1"
)
(define-fun w2 () String
    "421.11"
)
(define-fun w3 () String
    "467.111"
)
(define-fun w4 () String
    "438904.1111"
)
(define-fun w5 () String
    "0.1"
)
(define-fun w6 () String
    "."
)
(define-fun w7 () String
    "123."
)
(define-fun w8 () String
    ".123"
)
(define-fun w9 () String
    "44.aaaa"
)
(define-fun w10 () String
    "44.1aaa"
)
(define-fun w11 () String
    "1234.a"
)
(define-fun w12 () String
    "489.a"
)
(define-fun w13 () String
    "435.aaa"
)
(define-fun w14 () String
    "412.1aaaa"
)
(define-fun w15 () String
    "1567.11a"
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
                (str.to_re ".")
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
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))
(constraint (not (str.in_re w11 regex)))
(constraint (not (str.in_re w12 regex)))
(constraint (not (str.in_re w13 regex)))
(constraint (not (str.in_re w14 regex)))
(constraint (not (str.in_re w15 regex)))

(check-synth)
