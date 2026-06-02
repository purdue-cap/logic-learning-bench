(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no25_atmost_one_pair_of_11")
(set-info :description "The set of strings of 0's and 1's with at most one pair of consecutive 1's")

(require "./global/theories.alpharegex.sl")
(require "./global/models.alpharegex.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w0 0 (size (Pos w0)))))
(constraint (RegLan.Sem r (RegLan.Asp w11 0 (size (Pos w11)))))
(constraint (RegLan.Sem r (RegLan.Asp w101010 0 (size (Pos w101010)))))
(constraint (RegLan.Sem r (RegLan.Asp w00011000 0 (size (Pos w00011000)))))
(constraint (RegLan.Sem r (RegLan.Asp w00100110001 0 (size (Pos w00100110001)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w111 0 (size (Pos w111))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w110011 0 (size (Pos w110011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0110110 0 (size (Pos w0110110))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011001100 0 (size (Pos w00011001100))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w011100011110 0 (size (Pos w011100011110))))))

(check-synth)
