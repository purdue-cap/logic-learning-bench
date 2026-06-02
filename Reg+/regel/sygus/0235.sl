(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/37.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "A")
(define-fun w2 () String "A@")
(define-fun w3 () String "@A")
(define-fun w4 () String "A@a@")
(define-fun w5 () String "@@@a")
(define-fun w6 () String "@")
(define-fun w7 () String "@#")
(define-fun w8 () String "a:**")
(define-fun w9 () String "A@%")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "#")
                (str.to_re "%")
                (str.to_re "*")
                (str.to_re ":")
                (str.to_re "@")
                (str.to_re "A")
                (str.to_re "a")
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
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w9 r)))

(check-synth)
