(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/79.
; Natural language: I'm trying to use regular expressions to match a string that does not contain the sequence of characters of a less than symbol "<" followed by a non space.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "A new description."
)
(define-fun w2 () String
    "A < new description."
)
(define-fun w3 () String
    "it< doesn't match"
)
(define-fun w4 () String
    "A <new description."
)
(define-fun w5 () String
    "it <matches"
)
(define-fun w6 () String
    "<n"
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
                (str.to_re "'")
                (str.to_re ".")
                (str.to_re "<")
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
(constraint (not (str.in_re w5 regex)))
(constraint (not (str.in_re w6 regex)))

(check-synth)
