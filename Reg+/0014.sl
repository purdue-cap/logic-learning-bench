(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/14) — gt=repeatatleast(concat(<num>,contain(<cap>)),2)")
(set-info :description "lines with a number preceding a capital letter 2 or more times")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00671 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00864 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01009 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01337 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01013 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01385 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01264 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00117 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00119 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00218 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00672 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00684 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
