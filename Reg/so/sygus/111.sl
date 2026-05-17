(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/111.
; Natural language: I am trying to create a regular expression in javascript with the following rules: At least 2 characters. Should have at least 1 letter as a prefix and end with a ""."" or have "" "" or ""-"" and then have more letters.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "aa"
)
(define-fun w2 () String
    "aaaaa"
)
(define-fun w3 () String
    "a."
)
(define-fun w4 () String
    "a-a"
)
(define-fun w5 () String
    "a a"
)
(define-fun w6 () String
    "a"
)
(define-fun w7 () String
    "aa.aa."
)
(define-fun w8 () String
    "aa-"
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
                (str.to_re ".")
                (str.to_re "-")
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

(check-synth)
