(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/175) — gt=concat(contain(<num>),contain(<m0>))")
(set-info :description "lines with a number followed by the string '!'")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00110 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00125 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00390 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00389 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00505 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00455 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00822 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00397 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
