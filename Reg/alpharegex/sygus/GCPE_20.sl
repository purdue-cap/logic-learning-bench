(set-logic SLIA)

; Converted from benchmark/re/alpharegex semantic-format benchmarks.
; Source wildcard positions are encoded as regular-language masks over the binary alphabet.
; Each masked positive example means every matching binary string must be accepted.
; Each masked negative example means every matching binary string must be rejected.

(define-fun bin () RegLan
    (re.range "0" "1")
)
(define-fun w1 () RegLan
    (str.to_re "0")
)
(define-fun w2 () RegLan
    (re.++ (str.to_re "0") bin)
)
(define-fun w3 () RegLan
    (re.++ (str.to_re "0") bin (str.to_re "0"))
)
(define-fun w4 () RegLan
    (re.++ (str.to_re "0") bin (str.to_re "0") bin)
)
(define-fun w5 () RegLan
    (re.++ (str.to_re "0") bin (str.to_re "0") bin (str.to_re "0"))
)
(define-fun w6 () RegLan
    (re.++ (str.to_re "0") bin (str.to_re "0") bin (str.to_re "0") bin)
)
(define-fun w7 () RegLan
    (str.to_re "1")
)
(define-fun w8 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0"))
)
(define-fun w9 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1"))
)
(define-fun w10 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w11 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w12 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w13 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w14 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0"))
)
(define-fun w15 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w16 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w17 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w18 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w19 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w20 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w21 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w22 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w23 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w24 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w25 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w26 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w27 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w28 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w29 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w30 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "0"))
)
(define-fun w31 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w32 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w33 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w34 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w35 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w36 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w37 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w38 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0"))
)
(define-fun w39 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w40 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w41 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w42 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w43 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w44 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w45 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w46 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w47 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w48 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w49 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w50 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w51 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w52 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w53 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w54 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w55 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w56 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w57 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w58 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w59 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w60 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w61 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w62 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w63 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w64 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w65 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w66 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w67 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w68 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w69 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w70 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w71 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w72 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w73 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w74 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w75 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w76 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w77 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w78 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w79 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w80 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w81 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w82 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w83 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w84 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w85 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w86 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w87 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w88 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w89 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w90 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w91 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w92 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w93 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w94 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w95 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w96 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w97 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w98 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w99 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w100 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w101 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w102 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w103 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w104 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w105 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w106 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w107 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w108 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w109 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)

(synth-fun regex () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "0")        ; regex of string "0"
                (str.to_re "1")        ; regex of string "1"
                re.allchar             ; any single character, including "_"
                (re.opt Start)         ; optional
                (re.++ Start Start)    ; concat
                (re.union Start Start) ; union
                (re.* Start)           ; Kleene star
            )
        )
    )
)

(declare-var s String)

(constraint (=> (str.in_re s w1) (str.in_re s regex)))
(constraint (=> (str.in_re s w2) (str.in_re s regex)))
(constraint (=> (str.in_re s w3) (str.in_re s regex)))
(constraint (=> (str.in_re s w4) (str.in_re s regex)))
(constraint (=> (str.in_re s w5) (str.in_re s regex)))
(constraint (=> (str.in_re s w6) (str.in_re s regex)))
(constraint (=> (str.in_re s w7) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w8) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w9) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w10) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w11) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w12) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w13) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w14) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w15) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w16) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w17) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w18) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w19) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w20) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w21) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w22) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w23) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w24) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w25) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w26) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w27) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w28) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w29) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w30) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w31) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w32) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w33) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w34) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w35) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w36) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w37) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w38) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w39) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w40) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w41) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w42) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w43) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w44) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w45) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w46) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w47) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w48) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w49) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w50) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w51) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w52) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w53) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w54) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w55) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w56) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w57) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w58) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w59) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w60) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w61) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w62) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w63) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w64) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w65) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w66) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w67) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w68) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w69) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w70) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w71) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w72) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w73) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w74) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w75) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w76) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w77) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w78) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w79) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w80) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w81) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w82) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w83) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w84) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w85) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w86) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w87) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w88) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w89) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w90) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w91) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w92) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w93) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w94) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w95) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w96) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w97) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w98) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w99) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w100) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w101) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w102) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w103) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w104) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w105) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w106) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w107) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w108) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w109) (not (str.in_re s regex))))

(check-synth)
