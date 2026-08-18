(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/117.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "*abc*")
(define-fun w2 () String "*ab*c")
(define-fun w3 () String "aaa?")
(define-fun w4 () String "*aa")
(define-fun w5 () String "**aaa")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "*")
                (str.to_re "?")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
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
(constraint (not (str.in_re w4 r)))
(constraint (not (str.in_re w5 r)))

(check-synth)
