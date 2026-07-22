(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/82) — gt=repeatatleast(or(<m0>,<low>),1)")
(set-info :description "lines with the string '!' containing only a lower-case letter")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00079 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00319 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00828 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00635 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00636 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00074 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w01525 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00162 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00110 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00069 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00493 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
