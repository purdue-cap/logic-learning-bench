(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/122) — gt=or(concat(<m0>,contain(<let>)),repeatatleast(<low>,3))")
(set-info :description "lines with 3 or more of the string '!' before a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00994 0 (size (Pos w00994)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00612 0 (size (Pos w00612)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00833 0 (size (Pos w00833)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00078 0 (size (Pos w00078)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00530 0 (size (Pos w00530)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00852 0 (size (Pos w00852)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00087 0 (size (Pos w00087)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00283 0 (size (Pos w00283))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00579 0 (size (Pos w00579))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00801 0 (size (Pos w00801))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01222 0 (size (Pos w01222))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00664 0 (size (Pos w00664))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00777 0 (size (Pos w00777))))))

(check-synth)
