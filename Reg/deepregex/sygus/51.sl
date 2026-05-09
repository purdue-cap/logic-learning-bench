(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/51.
; Natural language: lines ending with a lower-case letter followed by the string "!" at least once in them
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "a!"
)
(define-fun w2 () String
    "this will work!"
)
(define-fun w3 () String
    "##$@234523adfFEAa!"
)
(define-fun w4 () String
    "b;lkjereadf!56"
)
(define-fun w5 () String
    "nothign here!fg7!"
)
(define-fun w6 () String
    "Why not!"
)
(define-fun w7 () String
    "WEREk!"
)
(define-fun w8 () String
    "!"
)
(define-fun w9 () String
    ""
)
(define-fun w10 () String
    "F32423!"
)
(define-fun w11 () String
    "%!"
)
(define-fun w12 () String
    "0!"
)
(define-fun w13 () String
    "K!"
)
(define-fun w14 () String
    "LKJ::LKJK:IO!"
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
                (str.to_re ":")
                (str.to_re ";")
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
