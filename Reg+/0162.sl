(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/169) — gt=concat(<cap>,contain(endwith(<vow>)))")
(set-info :description "lines with a capital before ending with vowel")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00899 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00175 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00185 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01046 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01177 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01058 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01060 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00171 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00439 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
