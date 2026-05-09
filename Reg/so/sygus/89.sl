(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/89.
; Natural language: I want to use a Regular expression validator in my line edit that doesn't allow to write dot(".") right after dot(".")
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "camp.new."
)
(define-fun w2 () String
    "ca.mp.n.e.w"
)
(define-fun w3 () String
    "camp..new"
)
(define-fun w4 () String
    ".."
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
                (str.to_re ".")
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
