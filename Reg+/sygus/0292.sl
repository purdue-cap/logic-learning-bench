(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/96.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "A")
(define-fun w2 () String "a")
(define-fun w3 () String "B")
(define-fun w4 () String "b")
(define-fun w5 () String "America")
(define-fun w6 () String "Bi")
(define-fun w7 () String "a door")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "A")
                (str.to_re "B")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "i")
                (str.to_re "m")
                (str.to_re "o")
                (str.to_re "r")
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
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))

(check-synth)
