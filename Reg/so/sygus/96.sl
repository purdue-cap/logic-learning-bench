(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/96.
; Natural language: I want a regular expression that validates a string of length 1 which has either the characters "A" or "B" (case insensitive) at the Begin
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "A"
)
(define-fun w2 () String
    "a"
)
(define-fun w3 () String
    "B"
)
(define-fun w4 () String
    "b"
)
(define-fun w5 () String
    "America"
)
(define-fun w6 () String
    "Bi"
)
(define-fun w7 () String
    "a door"
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
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))
(constraint (not (str.in_re w7 regex)))

(check-synth)
