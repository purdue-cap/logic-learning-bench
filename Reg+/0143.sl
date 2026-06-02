(set-info :author "Chentian Wu")
(set-info :source "REGEL (deepregex/149) — gt=or(concat(<any>,contain(<let>)),contain(<num>))")
(set-info :description "lines that have a character preceding a letter , or containing a number")

(require "./global/theories.deepregex.sl")
(require "./global/models.deepregex.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00130 0 (size (Pos w00130)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00232 0 (size (Pos w00232)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00014 0 (size (Pos w00014)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00781 0 (size (Pos w00781)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00394 0 (size (Pos w00394)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00619 0 (size (Pos w00619)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00261 0 (size (Pos w00261)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00052 0 (size (Pos w00052))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00024 0 (size (Pos w00024))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00038 0 (size (Pos w00038))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00150 0 (size (Pos w00150))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00041 0 (size (Pos w00041))))))

(check-synth)
