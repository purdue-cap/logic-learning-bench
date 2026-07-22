(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no12_n_is_ge_3_m_is_even")
(set-info :description "n is greater than or equal to 3, m is even")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w000 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w0001111 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w000011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w00001111 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w00000111111 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0001 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00001 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0000111 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
