(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/113.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "A")
(define-fun w2 () String "Capital")
(define-fun w3 () String "!C")
(define-fun w4 () String "#i#")
(define-fun w5 () String "some thing")
(define-fun w6 () String "12 has c 3##")
(define-fun w7 () String "!@ T")

(define-fun w8 () String "")

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
                (str.to_re "3")
                (str.to_re "@")
                (str.to_re "A")
                (str.to_re "C")
                (str.to_re "T")
                (str.to_re "a")
                (str.to_re "c")
                (str.to_re "e")
                (str.to_re "g")
                (str.to_re "h")
                (str.to_re "i")
                (str.to_re "l")
                (str.to_re "m")
                (str.to_re "n")
                (str.to_re "o")
                (str.to_re "p")
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
(constraint (str.in_re w5 r))
(constraint (str.in_re w6 r))
(constraint (str.in_re w7 r))

(constraint (not (str.in_re w8 r)))

(check-synth)
