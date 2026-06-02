(set-info :author "Chentian Wu")
(set-info :source "AlphaRegex (Lee, So, Oh, GPCE 2016) — no16_not_end_with_01")
(set-info :description "does not end with 01")

(require "./global/theories.sl")
(require "./global/models.sl")

(synth-fun r () RegLan)

(constraint (RegLan.Sem r (RegLan.Asp w_ 0 (size (Pos w_)))))
(constraint (RegLan.Sem r (RegLan.Asp w_0 0 (size (Pos w_0)))))
(constraint (RegLan.Sem r (RegLan.Asp w11 0 (size (Pos w11)))))
(constraint (RegLan.Sem r (RegLan.Asp w__0 0 (size (Pos w__0)))))
(constraint (RegLan.Sem r (RegLan.Asp w_11 0 (size (Pos w_11)))))
(constraint (RegLan.Sem r (RegLan.Asp w___0 0 (size (Pos w___0)))))
(constraint (RegLan.Sem r (RegLan.Asp w__11 0 (size (Pos w__11)))))
(constraint (RegLan.Sem r (RegLan.Asp w___11 0 (size (Pos w___11)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01 0 (size (Pos w01))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w?01 0 (size (Pos w?01))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w??01 0 (size (Pos w??01))))))

(check-synth)
