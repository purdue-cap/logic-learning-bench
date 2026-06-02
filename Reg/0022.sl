(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no22_atleast2_and_not_end_with_10")
(set-info :description "w has length at least 2 and does not end with 10")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w00 0 (size (Pos w00)))))
(constraint (RegLan.Sem r (RegLan.Asp w01 0 (size (Pos w01)))))
(constraint (RegLan.Sem r (RegLan.Asp w11 0 (size (Pos w11)))))
(constraint (RegLan.Sem r (RegLan.Asp w_00 0 (size (Pos w_00)))))
(constraint (RegLan.Sem r (RegLan.Asp w_01 0 (size (Pos w_01)))))
(constraint (RegLan.Sem r (RegLan.Asp w_11 0 (size (Pos w_11)))))
(constraint (RegLan.Sem r (RegLan.Asp w__00 0 (size (Pos w__00)))))
(constraint (RegLan.Sem r (RegLan.Asp w__01 0 (size (Pos w__01)))))
(constraint (RegLan.Sem r (RegLan.Asp w__11 0 (size (Pos w__11)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w? 0 (size (Pos w?))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w10 0 (size (Pos w10))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?10 0 (size (Pos w?10))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??10 0 (size (Pos w??10))))))

(check-synth)
