(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/52.
; Natural language: Allows only the following characters: Letters, numbers, spaces and any of the following characters "_" "-" "+" "(" ")" "/" "\"
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "test"
)
(define-fun w2 () String
    "test1"
)
(define-fun w3 () String
    "test1_"
)
(define-fun w4 () String
    "t(e_ s)t1 i/s \good+-"
)
(define-fun w5 () String
    "t,test"
)
(define-fun w6 () String
    "t.test"
)
(define-fun w7 () String
    "test!"
)
(define-fun w8 () String
    "te!@#$%st"
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
                (str.to_re "#")
                (str.to_re "$")
                (str.to_re "%")
                (str.to_re "(")
                (str.to_re ")")
                (str.to_re "+")
                (str.to_re ",")
                (str.to_re "-")
                (str.to_re ".")
                (str.to_re "/")
                (str.to_re "@")
                (str.to_re "\")
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
(constraint (str.in_re w3 regex))
(constraint (str.in_re w4 regex))
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))
(constraint (not (str.in_re w8 regex)))

(check-synth)
