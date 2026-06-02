(set-logic SLIA)

; Converted from upstream Regel benchmark stackoverflow/7.
; Grammar mirrors delis RegLan theory: char literals actually used + re.allchar + standard ops.

(define-fun w1 () String "MAC Address=192.167.235.19")
(define-fun w2 () String "MAC Address=192.167.235.19;zproduct_id=XYZ")
(define-fun w3 () String "MAC Address=192.167.235.19;")
(define-fun w4 () String "MAC =Address=192.167.235.19;zproduct_id=XYZ")

(synth-fun r () RegLan
    ((Start RegLan))
    (
        (Start RegLan
            (
                (str.to_re " ")
                (str.to_re ".")
                (str.to_re "1")
                (str.to_re "2")
                (str.to_re "3")
                (str.to_re "5")
                (str.to_re "6")
                (str.to_re "7")
                (str.to_re "9")
                (str.to_re ";")
                (str.to_re "=")
                (str.to_re "A")
                (str.to_re "C")
                (str.to_re "M")
                (str.to_re "X")
                (str.to_re "Y")
                (str.to_re "Z")
                (str.to_re "_")
                (str.to_re "c")
                (str.to_re "d")
                (str.to_re "e")
                (str.to_re "i")
                (str.to_re "o")
                (str.to_re "p")
                (str.to_re "r")
                (str.to_re "s")
                (str.to_re "t")
                (str.to_re "u")
                (str.to_re "z")
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
(constraint (not (str.in_re w4 r)))

(check-synth)
