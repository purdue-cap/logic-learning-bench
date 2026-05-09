(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/60.
; Natural language: I want to write a regular expression using jQuery to validate input fields which will not allow special char at end and the string length should be in between 3 - 25
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "abc#123"
)
(define-fun w2 () String
    "a%scsd"
)
(define-fun w3 () String
    "abc453&"
)
(define-fun w4 () String
    "ab"
)
(define-fun w5 () String
    "123%"
)
(define-fun w6 () String
    "abacvfrdfrgthgfrthgf22222"
)
(define-fun w7 () String
    "abacvfrdfrgthgfrthgf222222"
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
                (str.to_re "#")
                (str.to_re "%")
                (str.to_re "&")
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
(constraint (not (str.in_re w5 regex)))
(constraint (str.in_re w6 regex))
(constraint (not (str.in_re w7 regex)))

(check-synth)
