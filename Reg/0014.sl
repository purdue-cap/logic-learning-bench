(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no14_start_cond")
(set-info :description "w starts with 0 and has odd length, or starts with 1 and has even length.")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w0 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w0__ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w0____ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w1_ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w1___ (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0??? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w1 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w1?? (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w1???? (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
