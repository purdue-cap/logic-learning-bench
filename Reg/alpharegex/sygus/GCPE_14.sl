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
    (re.++ (str.to_re "0") bin bin)
)
(define-fun w3 () RegLan
    (re.++ (str.to_re "0") bin bin bin bin)
)
(define-fun w4 () RegLan
    (re.++ (str.to_re "1") bin)
)
(define-fun w5 () RegLan
    (re.++ (str.to_re "1") bin bin bin)
)
(define-fun w6 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0"))
)
(define-fun w7 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1"))
)
(define-fun w8 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "0"))
)
(define-fun w9 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w10 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w11 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w12 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w13 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w14 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w15 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w16 () RegLan
    (str.to_re "1")
)
(define-fun w17 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w18 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w19 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w20 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w21 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "0"))
)
(define-fun w22 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w23 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w24 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w25 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w26 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w27 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w28 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
)
(define-fun w29 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "0"))
)
(define-fun w30 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0") (str.to_re "1"))
)
(define-fun w31 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w32 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "1"))
)
(define-fun w33 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "0"))
)
(define-fun w34 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0") (str.to_re "1"))
)
(define-fun w35 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w36 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "1"))
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
(constraint (=> (str.in_re s w6) (not (str.in_re s regex))))
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

(check-synth)
