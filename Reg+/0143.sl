(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/149) — gt=or(concat(<any>,contain(<let>)),contain(<num>))")
(set-info :description "lines that have a character preceding a letter , or containing a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00130 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00232 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00014 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00781 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00394 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00619 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00261 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00052 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00024 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00150 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00041 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
