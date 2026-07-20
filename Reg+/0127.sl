(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/133) — gt=contain(concat(<cap>,contain(<low>)))")
(set-info :description "lines with a capital letter and a lower-case letter following it")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00174 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00926 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01190 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00756 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01262 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01323 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01045 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00020 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00055 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00809 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w01244 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00924 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
