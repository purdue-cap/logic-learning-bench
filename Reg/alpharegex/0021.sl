(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no21_exactly_00_once")
(set-info :description "w has exactly one pair of consecutive 0s.")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w00 0 (size (Pos w00)))))
(constraint (RegLan.Sem r (RegLan.Asp w1001 0 (size (Pos w1001)))))
(constraint (RegLan.Sem r (RegLan.Asp w010010 0 (size (Pos w010010)))))
(constraint (RegLan.Sem r (RegLan.Asp w1011001110 0 (size (Pos w1011001110)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01 0 (size (Pos w01))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w11 0 (size (Pos w11))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w000 0 (size (Pos w000))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00100 0 (size (Pos w00100))))))

(check-synth)
