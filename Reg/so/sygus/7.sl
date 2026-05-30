(set-logic SLIA)

; Converted from benchmark/Reg/so semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark so/7.
; Natural language: R1:Key and value can contain anything except ""="" and "";"" and cannot be blank or empty with spaces
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "MAC Address=192.167.235.19"
)
(define-fun w2 () String
    "MAC Address=192.167.235.19;zproduct_id=XYZ"
)
(define-fun w3 () String
    "MAC Address=192.167.235.19;"
)
(define-fun w4 () String
    "MAC =Address=192.167.235.19;zproduct_id=XYZ"
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
                (str.to_re ".")
                (str.to_re ";")
                (str.to_re "=")
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
