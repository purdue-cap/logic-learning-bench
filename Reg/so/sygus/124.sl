(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/124.
; Natural language: Let’s take a password as a combination of alphanumeric characters along with special characters, and check whether the password is valid or not with the help of few conditions. Conditions for a valid password are: Should have at least one number. Should have at least one uppercase and one lowercase character. Should have at least one special symbol. Should be between 6 to 20 characters long.
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "Geek12#"
)
(define-fun w2 () String
    "asd123"
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
(constraint (not (str.in_re w2 regex)))

(check-synth)
