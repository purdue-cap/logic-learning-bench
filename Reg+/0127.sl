(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/133) — gt=contain(concat(<cap>,contain(<low>)))")
(set-info :description "lines with a capital letter and a lower-case letter following it")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00174 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00926 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01190 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00756 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01262 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01323 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01045 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00020 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00055 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00809 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01244 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00924 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
