(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/1.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "peter")
(define-fun w2 () String "alex")
(define-fun w3 () String "ramon")
(define-fun w4 () String "thomas")
(define-fun w5 () String "pe<.?ter")
(define-fun w6 () String "ale8")
(define-fun w7 () String "?ramon")
(define-fun w8 () String "tho<>?mass")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re ".")
                (str.to_re "8")
                (str.to_re "<")
                (str.to_re ">")
                (str.to_re "?")
                (str.to_re "a")
                (str.to_re "e")
                (str.to_re "h")
                (str.to_re "l")
                (str.to_re "m")
                (str.to_re "n")
                (str.to_re "o")
                (str.to_re "p")
                (str.to_re "r")
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
(constraint (str.in_re w4 r))
(constraint (not (str.in_re w5 r)))
(constraint (not (str.in_re w6 r)))
(constraint (not (str.in_re w7 r)))
(constraint (not (str.in_re w8 r)))

(check-synth)
