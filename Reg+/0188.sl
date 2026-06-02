(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/196) — gt=concat(concat(<m0>,contain(<any>)),contain(<num>))")
(set-info :description "lines containing the string '!' preceding a character before a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00349 0 (size (Pos w00349)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00326 0 (size (Pos w00326)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01257 0 (size (Pos w01257)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00847 0 (size (Pos w00847)))))
(constraint      (RegLan.Sem r (RegLan.Asp w01464 0 (size (Pos w01464)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00356 0 (size (Pos w00356)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00645 0 (size (Pos w00645)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00002 0 (size (Pos w00002))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00011 0 (size (Pos w00011))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00352 0 (size (Pos w00352))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00613 0 (size (Pos w00613))))))

(check-synth)
