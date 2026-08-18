(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/76.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "test.file.D%d4%")
(define-fun w2 () String "%d4%.test.file")
(define-fun w3 () String "D%d4%.T%t7%.test.%t7%file.%d4%.txt")
(define-fun w4 () String "t%est.file.D%d4%")
(define-fun w5 () String "%d4%.te%st.file")
(define-fun w6 () String "D%d4%.T%t7%.te%st.%t7%file.%d4%.txt")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "%")
                (str.to_re ".")
                (str.to_re "4")
                (str.to_re "7")
                (str.to_re "D")
                (str.to_re "T")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "f")
                (str.to_re "i")
                (str.to_re "l")
                (str.to_re "s")
                (str.to_re "t")
                (str.to_re "x")
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
(constraint (not (str.in_re w6 r)))

(check-synth)
