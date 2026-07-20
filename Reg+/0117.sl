(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/122) — gt=or(concat(<m0>,contain(<let>)),repeatatleast(<low>,3))")
(set-info :description "lines with 3 or more of the string '!' before a letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00994 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00612 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00833 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00078 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00530 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00852 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00087 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00283 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00579 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00801 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01222 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00664 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00777 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
