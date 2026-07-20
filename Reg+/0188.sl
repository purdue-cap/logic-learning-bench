(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/196) — gt=concat(concat(<m0>,contain(<any>)),contain(<num>))")
(set-info :description "lines containing the string '!' preceding a character before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00349 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00326 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01257 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00847 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w01464 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00356 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00645 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00352 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00613 head tail))))

(constraint (not (RegLan.Sem r (RegLan.Asp wempty_deepregex head tail))))

(check-synth)
