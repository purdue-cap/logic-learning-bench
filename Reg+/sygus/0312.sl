(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/116.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "abcd")
(define-fun w2 () String "ab_cd")
(define-fun w3 () String "a_b_cd")
(define-fun w4 () String "%*##_@+")
(define-fun w5 () String "ab__cd")
(define-fun w6 () String "a_b__Cd")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "#")
                (str.to_re "%")
                (str.to_re "*")
                (str.to_re "+")
                (str.to_re "@")
                (str.to_re "C")
                (str.to_re "_")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "d")
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

(check-synth)
