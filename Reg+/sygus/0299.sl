(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/103.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "00000001")
(define-fun w2 () String "101AE24")
(define-fun w3 () String "01234")
(define-fun w4 () String "00001")
(define-fun w5 () String "00")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "A")
                (str.to_re "E")
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
(constraint (str.in_re w3 r))
(constraint (str.in_re w4 r))
(constraint (not (str.in_re w5 r)))

(check-synth)
