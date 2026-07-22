(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/122) — gt=or(concat(<m0>,contain(<let>)),repeatatleast(<low>,3))")
(set-info :description "lines with 3 or more of the string '!' before a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00994 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00612 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00833 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00078 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00530 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00852 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00087 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00283 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00579 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00801 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01222 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00664 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00777 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
