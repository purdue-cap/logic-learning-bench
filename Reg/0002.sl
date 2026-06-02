(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no2_end_with_01")
(set-info :description "end with 01")

(require "./global/theories.alpharegex.sl")
(require "./global/models.alpharegex.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w01 0 (size (Pos w01)))))
(constraint (RegLan.Sem r (RegLan.Asp w_01 0 (size (Pos w_01)))))
(constraint (RegLan.Sem r (RegLan.Asp w__01 0 (size (Pos w__01)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00 0 (size (Pos w00))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w10 0 (size (Pos w10))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w11 0 (size (Pos w11))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w_?00 0 (size (Pos w_?00))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w_?10 0 (size (Pos w_?10))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w_?11 0 (size (Pos w_?11))))))

(check-synth)
