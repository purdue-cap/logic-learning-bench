(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/74.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "9999999999")
(define-fun w2 () String "9876543210")
(define-fun w3 () String "999999999")
(define-fun w4 () String "1234567890")
(define-fun w5 () String "8912456789")
(define-fun w6 () String "qwe3456&ert")
(define-fun w7 () String "0123456789")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "&")
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
                (str.to_re "e")
                (str.to_re "q")
                (str.to_re "r")
                (str.to_re "t")
                (str.to_re "w")
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
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))

(check-synth)
