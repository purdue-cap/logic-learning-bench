(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/103) — gt=startwith(repeatatleast(<low>,4))")
(set-info :description "lines with words starting with 4 or more lower-case letters")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00750 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00937 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00934 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01074 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01199 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01302 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01454 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00269 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00524 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00147 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00148 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00892 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
