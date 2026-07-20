(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/169) — gt=concat(<cap>,contain(endwith(<vow>)))")
(set-info :description "lines with a capital before ending with vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00899 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00175 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00185 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01046 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01177 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01058 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01060 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00171 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00439 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
