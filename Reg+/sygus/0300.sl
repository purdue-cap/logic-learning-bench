(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/104.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "ADFad1334")
(define-fun w2 () String "43545SFDDFdf454fgf")
(define-fun w3 () String "asdadadASD")
(define-fun w4 () String "A8")
(define-fun w5 () String "8S")
(define-fun w6 () String "B")
(define-fun w7 () String "7")
(define-fun w8 () String "12312342")
(define-fun w9 () String "sdff23424#$")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "#")
                (str.to_re "$")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "4")
                (str.to_re "5")
                (str.to_re "7")
                (str.to_re "8")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "D")
                (str.to_re "F")
                (str.to_re "S")
                (str.to_re "a")
                (str.to_re "d")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "s")
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
(constraint (str.in_re w5 r))
(constraint (str.in_re w6 r))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))

(check-synth)
