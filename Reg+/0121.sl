(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/127) — gt=concat(star(<cap>),contain(<m0>))")
(set-info :description "lines with words with zero or more capital letters before the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00533 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00709 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01397 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01355 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01245 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00961 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00719 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00416 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00589 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00773 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00804 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00301 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
