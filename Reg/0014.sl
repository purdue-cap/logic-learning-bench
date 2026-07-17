(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no14_start_cond")
(set-info :description "w starts with 0 and has odd length, or starts with 1 and has even length.")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w0__ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w0____ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w1_ head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w1___ head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0??? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1?? head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w1???? head tail))))

(check-synth)
