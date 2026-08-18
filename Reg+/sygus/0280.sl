(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/84.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "John Stevens 12")
(define-fun w2 () String "james stevens")
(define-fun w3 () String "willcall12")
(define-fun w4 () String "12cell space")
(define-fun w5 () String "12cell space!")
(define-fun w6 () String "John@Stevens")
(define-fun w7 () String "james 12 Fall#")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "!")
                (str.to_re "#")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "@")
                (str.to_re "F")
                (str.to_re "J")
                (str.to_re "S")
                (str.to_re "a")
                (str.to_re "c")
                (str.to_re "e")
                (str.to_re "h")
                (str.to_re "i")
                (str.to_re "j")
                (str.to_re "l")
                (str.to_re "m")
                (str.to_re "n")
                (str.to_re "o")
                (str.to_re "p")
                (str.to_re "s")
                (str.to_re "t")
                (str.to_re "v")
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
(constraint (str.in_re w3 r))
(constraint (str.in_re w4 r))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))

(check-synth)
