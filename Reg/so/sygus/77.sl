(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/77.
; Natural language: The input box should accept alphanumeric with no space and it should also allow the user to use the characters like "~" "!" "@" "#" "$" "-" "_" any where in the string, except these characters non of the other characters should be allowed like ("%",  "&", "^" etc). It should not allow leading/trailing whitespace also.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "ab@4_w"
)
(define-fun w2 () String
    "sd!tye123"
)
(define-fun w3 () String
    "sd%tye123"
)
(define-fun w4 () String
    "sd*tye123"
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
                (str.to_re "%")
                (str.to_re "*")
                (str.to_re "@")
                (str.to_re "_")
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
(constraint (not (str.in_re w3 regex)))
(constraint (not (str.in_re w4 regex)))

(check-synth)
