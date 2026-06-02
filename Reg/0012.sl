(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no12_n_is_ge_3_m_is_even")
(set-info :description "n is greater than or equal to 3, m is even")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w000 0 (size (Pos w000)))))
(constraint (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011)))))
(constraint (RegLan.Sem r (RegLan.Asp w0001111 0 (size (Pos w0001111)))))
(constraint (RegLan.Sem r (RegLan.Asp w000011 0 (size (Pos w000011)))))
(constraint (RegLan.Sem r (RegLan.Asp w00001111 0 (size (Pos w00001111)))))
(constraint (RegLan.Sem r (RegLan.Asp w00000111111 0 (size (Pos w00000111111)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0 0 (size (Pos w0))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00 0 (size (Pos w00))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0001 0 (size (Pos w0001))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00001 0 (size (Pos w00001))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0000111 0 (size (Pos w0000111))))))

(check-synth)
