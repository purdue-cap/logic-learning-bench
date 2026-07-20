(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/160) — gt=repeatatleast(concat(<any>,contain(<vow>)),1)")
(set-info :description "lines with character followed by vowel at least once")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00119 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00131 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00246 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00079 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00674 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01269 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00624 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00235 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00124 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00088 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
