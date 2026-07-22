(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/193) — gt=concat(startwith(<any>),contain(<let>))")
(set-info :description "items beginning with a character preceding a letter .")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00119 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00246 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00247 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00548 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00352 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00844 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00218 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00238 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00251 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00114 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
