(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/75) — gt=concat(repeatatleast(<num>,1),star(concat(<,>,repeatatleast(<num>,1))))")
(set-info :description "Need a regular expression to validate number with comma separator.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00495 0 (size (Pos w00495)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00280 0 (size (Pos w00280)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00007 0 (size (Pos w00007)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00270 0 (size (Pos w00270)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00004 0 (size (Pos w00004))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00086 0 (size (Pos w00086))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00408 0 (size (Pos w00408))))))

(check-synth)
