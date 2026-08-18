(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/112.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "Abc 20 Jan to 15 Dec")
(define-fun w2 () String "hello world")
(define-fun w3 () String "123 abc")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re "0")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "5")
                (str.to_re "A")
                (str.to_re "D")
                (str.to_re "J")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "h")
                (str.to_re "l")
                (str.to_re "n")
                (str.to_re "o")
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

(check-synth)
