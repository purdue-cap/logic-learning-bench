(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/52.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "test")
(define-fun w2 () String "test1")
(define-fun w3 () String "test1_")
(define-fun w4 () String "t(e_ s)t1 i/s \\good+-")
(define-fun w5 () String "t,test")
(define-fun w6 () String "t.test")
(define-fun w7 () String "test!")
(define-fun w8 () String "te!@#$%st")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "!")
                (str.to_re "#")
                (str.to_re "$")
                (str.to_re "%")
                (str.to_re "(")
                (str.to_re ")")
                (str.to_re "+")
                (str.to_re ",")
                (str.to_re "-")
                (str.to_re ".")
                (str.to_re "/")
                (str.to_re "1")
                (str.to_re "@")
                (str.to_re "\\")
                (str.to_re "_")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "g")
                (str.to_re "i")
                (str.to_re "o")
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
(constraint (str.in_re w3 r))
(constraint (str.in_re w4 r))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))

(check-synth)
