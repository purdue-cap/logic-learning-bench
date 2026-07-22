(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/161) — gt=concat(contain(star(<any>)),contain(<num>))")
(set-info :description "lines with zero or more characters before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00218 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00527 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00167 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00444 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00448 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00982 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00039 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00937 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00701 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
