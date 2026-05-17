(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/91.
; Natural language: R1: 10 - 15 total characters in length R2: Can contain ""("", "")"" ,space , ""."", or ""-"" delimiters within the string.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "(501) 555 1234"
)
(define-fun w2 () String
    "(501)-555.1234"
)
(define-fun w3 () String
    "501-555-1234"
)
(define-fun w4 () String
    "501.555.1234"
)
(define-fun w5 () String
    "501 555 1234"
)
(define-fun w6 () String
    "501) 343-2233"
)
(define-fun w7 () String
    "(501 343-2233"
)
(define-fun w8 () String
    "(501. 343-2233"
)
(define-fun w9 () String
    "5013432233"
)
(define-fun w10 () String
    "800-..555-1234"
)
(define-fun w11 () String
    "-(.8005551234"
)
(define-fun w12 () String
    "*-(.8005551234"
)
(define-fun w13 () String
    "501*555-1234"
)
(define-fun w14 () String
    "-(.80055512 41"
)
(define-fun w15 () String
    "501_555_1234"
)
(define-fun w16 () String
    "555-1234"
)
(define-fun w17 () String
    "800-...........555-1234"
)
(define-fun w18 () String
    "013432233"
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
                (str.to_re " ")
                (str.to_re "(")
                (str.to_re ")")
                (str.to_re "-")
                (str.to_re ".")
                (str.to_re "*")
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
(constraint (str.in_re w8 regex))
(constraint (str.in_re w9 regex))
(constraint (str.in_re w10 regex))
(constraint (str.in_re w11 regex))
(constraint (not (str.in_re w12 regex)))
(constraint (not (str.in_re w13 regex)))
(constraint (not (str.in_re w14 regex)))
(constraint (not (str.in_re w15 regex)))
(constraint (not (str.in_re w16 regex)))
(constraint (not (str.in_re w17 regex)))
(constraint (not (str.in_re w18 regex)))

(check-synth)
