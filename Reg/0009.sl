(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no9_5th1")
(set-info :description "5th num from right end is 1")

(require "./global/theories.alpharegex.sl")
(require "./global/models.alpharegex.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0____ 0 (size (Pos w0____)))))
(constraint (RegLan.Sem r (RegLan.Asp w_0____ 0 (size (Pos w_0____)))))
(constraint (RegLan.Sem r (RegLan.Asp w__0____ 0 (size (Pos w__0____)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1???? 0 (size (Pos w1????))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?1???? 0 (size (Pos w?1????))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??1???? 0 (size (Pos w??1????))))))

(check-synth)
