(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/95) — gt=startwith(contain(<low>))")
(set-info :description "lines with words and a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00752 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00306 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01083 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01082 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00375 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00488 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00169 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00184 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01193 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01451 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01443 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
