(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/121.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "ankitrai326")
(define-fun w2 () String "geeksforgeeks")
(define-fun w3 () String "ankirai@")
(define-fun w4 () String "ankit.")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ".")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "6")
                (str.to_re "@")
                (str.to_re "a")
                (str.to_re "e")
                (str.to_re "f")
                (str.to_re "g")
                (str.to_re "i")
                (str.to_re "k")
                (str.to_re "n")
                (str.to_re "o")
                (str.to_re "r")
                (str.to_re "s")
                (str.to_re "t")
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

(check-synth)
