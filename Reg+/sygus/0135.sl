(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/141.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "!")
(define-fun w2 () String "a!bc")
(define-fun w3 () String "1!3b")
(define-fun w4 () String "Dddd!!!!123")
(define-fun w5 () String "!!!")
(define-fun w6 () String "2!eE!jde")
(define-fun w7 () String "1!76!!de!")
(define-fun w8 () String "@")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "@")
                (str.to_re "D")
                (str.to_re "E")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "c")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "j")
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
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w8 r)))
(constraint (not (str.in_re w8 r)))

(check-synth)
