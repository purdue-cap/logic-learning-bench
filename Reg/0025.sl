(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no25_atmost_one_pair_of_11")
(set-info :description "The set of strings of 0's and 1's with at most one pair of consecutive 1's")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w11 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w101010 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w00011000 head tail)))
(constraint (RegLan.Sem r (RegLan.Asp w00100110001 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w111 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w110011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0110110 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011001100 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w011100011110 head tail))))

(check-synth)
