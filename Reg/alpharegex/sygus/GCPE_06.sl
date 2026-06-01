(set-logic SLIA)

; Converted from benchmark/re/alpharegex semantic-format benchmarks.
; Source wildcard positions are encoded as regular-language masks over the binary alphabet.
; Each masked positive example means every matching binary string must be accepted.
; Each masked negative example means every matching binary string must be rejected.

(define-fun bin () RegLan
    (re.range "0" "1")
)
(define-fun w1 () RegLan
    (re.++ bin bin bin)
)
(define-fun w2 () RegLan
    (re.++ bin bin bin bin bin bin)
)
(define-fun w3 () RegLan
    bin
)
(define-fun w4 () RegLan
    (re.++ bin bin)
)
(define-fun w5 () RegLan
    (re.++ bin bin bin bin)
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

(constraint (=> (str.in_re s w1) (str.in_re s regex)))
(constraint (=> (str.in_re s w2) (str.in_re s regex)))
(constraint (=> (str.in_re s w3) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w4) (not (str.in_re s regex))))
(constraint (=> (str.in_re s w5) (not (str.in_re s regex))))

(check-synth)
