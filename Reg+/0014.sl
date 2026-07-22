(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/14) — gt=repeatatleast(concat(<num>,contain(<cap>)),2)")
(set-info :description "lines with a number preceding a capital letter 2 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00671 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00864 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01009 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01337 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01013 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01385 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01264 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00117 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00218 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00672 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00684 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
