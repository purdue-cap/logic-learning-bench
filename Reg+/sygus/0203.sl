(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/3.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "(0.4545 && 0.567) || 456")
(define-fun w2 () String "0.456 && 0.567")
(define-fun w3 () String "9876-5-4321")
(define-fun w4 () String "9876-5-4321 (attack)")
(define-fun w5 () String "(0.4545 && 0.567) || 456 && (me)")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "&")
                (str.to_re "(")
                (str.to_re ")")
                (str.to_re "-")
                (str.to_re ".")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "8")
                (str.to_re "9")
                (str.to_re "a")
                (str.to_re "c")
                (str.to_re "e")
                (str.to_re "k")
                (str.to_re "m")
                (str.to_re "t")
                (str.to_re "|")
                re.allchar
                (re.opt Start)
                (re.++ Start Start)
                (re.union Start Start)
                (re.inter Start Start)
                (re.* Start)
                (re.+ Start)
            )
        )
    )
)

(constraint (str.in_re w1 r))
(constraint (str.in_re w2 r))
(constraint (not (str.in_re w3 r)))
(constraint (not (str.in_re w4 r)))
(constraint (not (str.in_re w5 r)))

(check-synth)
