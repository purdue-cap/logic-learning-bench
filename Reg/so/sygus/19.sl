(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/19.
; Natural language: I am trying to write a regular expression which validates a text box to have only digits with length 5 or 9.”Can any one please help me in modifying or writing a new regular expression which supports below pattern: - valid (ending with comma) -valid (not ending with comma) -Invalid (should not support if 1st digit is length 5 and 2nd less than 9) -valid (must support only digit length 5 or 9)
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "09103,09101,"
)
(define-fun w2 () String
    "09103,09101"
)
(define-fun w3 () String
    "12345,123456789"
)
(define-fun w4 () String
    "12345,1234567"
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
                (str.to_re ",")
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
(constraint (not (str.in_re w4 regex)))

(check-synth)
