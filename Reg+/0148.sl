(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/155) — gt=and(contain(<low>),not(<m0>))")
(set-info :description "lines containing lower-case letter and not string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01025 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00160 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00923 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01217 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01024 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00362 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00115 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00014 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00918 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00065 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
