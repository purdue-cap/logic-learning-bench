(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/127) — gt=concat(star(<cap>),contain(<m0>))")
(set-info :description "lines with words with zero or more capital letters before the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00533 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00709 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01397 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01355 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01245 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00961 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00719 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00416 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00589 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00773 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00804 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00301 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
