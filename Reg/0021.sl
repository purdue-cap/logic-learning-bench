(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no21_exactly_00_once")
(set-info :description "w has exactly one pair of consecutive 0s.")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w00 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w1001 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w010010 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w1011001110 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w01 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w11 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w000 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00100 head tail))))

(check-synth)
