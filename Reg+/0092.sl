(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/95) — gt=startwith(contain(<low>))")
(set-info :description "lines with words and a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00038 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00752 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00306 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01083 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01082 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00375 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00488 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00169 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00184 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01193 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01451 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01443 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
