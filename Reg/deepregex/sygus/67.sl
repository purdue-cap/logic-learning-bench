(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/67.
; Natural language: lines with string "!" followed by a character , 4 or more times
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "!a!a!a!a"
)
(define-fun w2 () String
    "!f@32!c!fj23!kfls!wor!"
)
(define-fun w3 () String
    "!cc!dkw!map!fo234!0ri2op!pfAA!fla"
)
(define-fun w4 () String
    "!c!1!@!A!Z!"
)
(define-fun w5 () String
    "!ff!23A!ffC!ga!f!"
)
(define-fun w6 () String
    "!CC!ff23!ppr1!f!q!"
)
(define-fun w7 () String
    "!A!ccf!pw3!o!dd!g!"
)
(define-fun w8 () String
    "!f"
)
(define-fun w9 () String
    "!1F!C!fSdf"
)
(define-fun w10 () String
    "dfh2123@@"
)
(define-fun w11 () String
    "!rj!aowe!CC"
)
(define-fun w12 () String
    "!!"
)
(define-fun w13 () String
    ""
)
(define-fun w14 () String
    "!C!!fj!"
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
                (str.to_re "!")
                (str.to_re "@")
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
(constraint (str.in_re w5 regex))
(constraint (str.in_re w6 regex))
(constraint (str.in_re w7 regex))
(constraint (not (str.in_re w8 regex)))
(constraint (not (str.in_re w9 regex)))
(constraint (not (str.in_re w10 regex)))
(constraint (not (str.in_re w11 regex)))
(constraint (not (str.in_re w12 regex)))
(constraint (not (str.in_re w13 regex)))
(constraint (not (str.in_re w14 regex)))

(check-synth)
