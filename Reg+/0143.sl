(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/149) — gt=or(concat(<any>,contain(<let>)),contain(<num>))")
(set-info :description "lines that have a character preceding a letter , or containing a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00130 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00232 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00014 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00781 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00394 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00619 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00261 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00052 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00024 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00150 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00041 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
