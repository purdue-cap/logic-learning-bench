(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no21_exactly_00_once")
(set-info :description "w has exactly one pair of consecutive 0s.")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w00 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w1001 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w010010 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w1011001110 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w01 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w11 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w000 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00100 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
