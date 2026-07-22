(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/196) — gt=concat(concat(<m0>,contain(<any>)),contain(<num>))")
(set-info :description "lines containing the string '!' preceding a character before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")
(require "./global/models.deepregex.empty.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00349 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00326 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01257 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00847 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w01464 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00356 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00645 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00002 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00011 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00038 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00352 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00613 (RegLan.Sem r (RegLan.Asp head tail)))))

(constraint (not (with-model wempty_deepregex (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
