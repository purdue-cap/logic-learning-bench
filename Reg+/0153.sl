(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/160) — gt=repeatatleast(concat(<any>,contain(<vow>)),1)")
(set-info :description "lines with character followed by vowel at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00131 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00246 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00674 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01269 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00624 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00235 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00124 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00088 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
