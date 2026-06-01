(set-logic SLIA)

; Converted from benchmark/Reg/deepregex semantic-format benchmarks.
; Concrete examples recovered from upstream Regel benchmark deepregex/64.
; Natural language: lines with 3 or more words that start in a capital letter
; Grammar terminals are derived from the local Delis theory file for this benchmark.

(define-fun w1 () String
    "Abc\Def\Ghi"
)
(define-fun w2 () String
    "Zfw\Fewfa\Kwer"
)
(define-fun w3 () String
    "Xreragsdgafawer\Cfasdwerdfsdf\Kapworfldsa"
)
(define-fun w4 () String
    "Hifowld\Asdfa\Ddfower\Casowerp\Aowerp\Gsdfa"
)
(define-fun w5 () String
    "Fsdower\Casdfr\DDaowe\Kaowerp"
)
(define-fun w6 () String
    "Ionosphere\Game\Theory\Sucks\Haha"
)
(define-fun w7 () String
    "Crpwpap\Howerp\Gsowerp\Toweripa"
)
(define-fun w8 () String
    "Abc"
)
(define-fun w9 () String
    "Abc\Def\hijkl"
)
(define-fun w10 () String
    "Tel\soapw\Gpfa"
)
(define-fun w11 () String
    "abcd\efwa\gowpzr\kldfkl"
)
(define-fun w12 () String
    "t"
)
(define-fun w13 () String
    "agowp\Aowerip\C023123"
)
(define-fun w14 () String
    "a2kf\Cworp\Tawoer"
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
                (str.to_re "\")
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
