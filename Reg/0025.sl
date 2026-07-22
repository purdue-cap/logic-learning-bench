(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no25_atmost_one_pair_of_11")
(set-info :description "The set of strings of 0's and 1's with at most one pair of consecutive 1's")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (with-model w0 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w11 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w101010 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w00011000 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (with-model w00100110001 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w111 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w110011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0110110 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011001100 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w011100011110 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
