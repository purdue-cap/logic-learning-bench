(set-logic SLIA)

; Converted from benchmark/re/alpharegex semantic-format benchmarks.
; Source wildcard positions are encoded as regular-language masks over the binary alphabet.
; Each masked positive example means every matching binary string must be accepted.
; Each masked negative example means every matching binary string must be rejected.

(define-fun bin () RegLan
    (re.range "0" "1")
)
(define-fun w1 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0"))
)
(define-fun w2 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1"))
)
(define-fun w3 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1"))
)
(define-fun w4 () RegLan
    (re.++ bin (str.to_re "0") (str.to_re "0"))
)
(define-fun w5 () RegLan
    (re.++ bin (str.to_re "0") (str.to_re "1"))
)
(define-fun w6 () RegLan
    (re.++ bin (str.to_re "1") (str.to_re "1"))
)
(define-fun w7 () RegLan
    (re.++ bin bin (str.to_re "0") (str.to_re "0"))
)
(define-fun w8 () RegLan
    (re.++ bin bin (str.to_re "0") (str.to_re "1"))
)
(define-fun w9 () RegLan
    (re.++ bin bin (str.to_re "1") (str.to_re "1"))
)
(define-fun w10 () RegLan
    (str.to_re "0")
)
(define-fun w11 () RegLan
    (str.to_re "1")
)
(define-fun w12 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0"))
)
(define-fun w13 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w14 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w15 () RegLan
    (re.++ (str.to_re "0") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w16 () RegLan
    (re.++ (str.to_re "0") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)
(define-fun w17 () RegLan
    (re.++ (str.to_re "1") (str.to_re "0") (str.to_re "1") (str.to_re "0"))
)
(define-fun w18 () RegLan
    (re.++ (str.to_re "1") (str.to_re "1") (str.to_re "1") (str.to_re "0"))
)

(synth-fun r () RegLan
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

(constraint (=> (str.in_re s w1) (str.in_re s r)))
(constraint (=> (str.in_re s w2) (str.in_re s r)))
(constraint (=> (str.in_re s w3) (str.in_re s r)))
(constraint (=> (str.in_re s w4) (str.in_re s r)))
(constraint (=> (str.in_re s w5) (str.in_re s r)))
(constraint (=> (str.in_re s w6) (str.in_re s r)))
(constraint (=> (str.in_re s w7) (str.in_re s r)))
(constraint (=> (str.in_re s w8) (str.in_re s r)))
(constraint (=> (str.in_re s w9) (str.in_re s r)))
(constraint (=> (str.in_re s w10) (not (str.in_re s r))))
(constraint (=> (str.in_re s w11) (not (str.in_re s r))))
(constraint (=> (str.in_re s w12) (not (str.in_re s r))))
(constraint (=> (str.in_re s w13) (not (str.in_re s r))))
(constraint (=> (str.in_re s w14) (not (str.in_re s r))))
(constraint (=> (str.in_re s w15) (not (str.in_re s r))))
(constraint (=> (str.in_re s w16) (not (str.in_re s r))))
(constraint (=> (str.in_re s w17) (not (str.in_re s r))))
(constraint (=> (str.in_re s w18) (not (str.in_re s r))))

(check-synth)
