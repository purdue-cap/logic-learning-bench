(set-logic SLIA)

; Converted from upstream Regel benchmark deepregex/11.
; Grammar mirrors loom RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "!a")
(define-fun w2 () String "@a")
(define-fun w3 () String "ba")
(define-fun w4 () String "!@e")
(define-fun w5 () String "@@ee")
(define-fun w6 () String "!iou")
(define-fun w7 () String "!aee")
(define-fun w8 () String "Ae")
(define-fun w9 () String "!")
(define-fun w10 () String "@")
(define-fun w11 () String "e")
(define-fun w12 () String ",")
(define-fun w13 () String ",a")
(define-fun w14 () String ",be")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re "!")
                (str.to_re ",")
                (str.to_re "@")
                (str.to_re "A")
                (str.to_re "a")
                (str.to_re "b")
                (str.to_re "e")
                (str.to_re "i")
                (str.to_re "o")
                (str.to_re "u")
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
(constraint (not (str.in_re w9 r)))
(constraint (not (str.in_re w10 r)))
(constraint (not (str.in_re w11 r)))
(constraint (not (str.in_re w12 r)))
(constraint (not (str.in_re w13 r)))
(constraint (not (str.in_re w14 r)))

(check-synth)
