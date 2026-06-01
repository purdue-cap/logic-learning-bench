(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/22.
; Natural language: I'm trying to write a regular expression to check whether or not a proposed name is valid in a gaming platform. Rules: Name must contain at least 3 and no more than 20 letters. Name must start with a upper case letter. Name must never have two uppercase letters in a row. Spaces are allowed, but must be preceded by a letter and be followed by an uppercase letter. Hyphens are allowed, but must be preceded by a letter and be followed by a lowercase letter. All uppercase letters must be followed by a lowercase letter unless they are followed by a space or hyphen.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "Foo"
)
(define-fun w2 () String
    "Hello World"
)
(define-fun w3 () String
    "Hello-world"
)
(define-fun w4 () String
    "Bigsby Platt-slatt"
)
(define-fun w5 () String
    "foo"
)
(define-fun w6 () String
    "Hello world"
)
(define-fun w7 () String
    "Hello-World"
)
(define-fun w8 () String
    "33333333333"
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
                (str.to_re " ")
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
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))

(check-synth)
