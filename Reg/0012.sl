(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no12_n_is_ge_3_m_is_even")
(set-info :description "n is greater than or equal to 3, m is even")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w000 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w00011 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w0001111 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w000011 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w00001111 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w00000111111 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0001 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00001 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0000111 head tail))))

(check-synth)
