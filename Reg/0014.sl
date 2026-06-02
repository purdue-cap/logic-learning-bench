(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no14_start_cond")
(set-info :description "w starts with 0 and has odd length, or starts with 1 and has even length.")

(require "./global/theories.alpharegex.sl")
(require "./global/models.alpharegex.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0 0 (size (Pos w0)))))
(constraint (RegLan.Sem r (RegLan.Asp w0__ 0 (size (Pos w0__)))))
(constraint (RegLan.Sem r (RegLan.Asp w0____ 0 (size (Pos w0____)))))
(constraint (RegLan.Sem r (RegLan.Asp w1_ 0 (size (Pos w1_)))))
(constraint (RegLan.Sem r (RegLan.Asp w1___ 0 (size (Pos w1___)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0? 0 (size (Pos w0?))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0??? 0 (size (Pos w0???))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 0 (size (Pos w1))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1?? 0 (size (Pos w1??))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1???? 0 (size (Pos w1????))))))

(check-synth)
