(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/155) — gt=and(contain(<low>),not(<m0>))")
(set-info :description "lines containing lower-case letter and not string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01025 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00160 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00923 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01217 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01024 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00362 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00115 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00014 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00918 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00065 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
