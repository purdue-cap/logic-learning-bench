(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/47) — gt=concat(optional(or(<+>,<->)),concat(concat(repeatatleast(<num>,1),concat(<.>,optional(repeatatleast(<num>,1)))),optional(or(<+>,<->))))")
(set-info :description "I need a regular expression that validates a decimal number which includes ''+'', ''-'' sign as well.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00160 0 (size (Pos w00160)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00253 0 (size (Pos w00253)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00094 0 (size (Pos w00094)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 0 (size (Pos w00215)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00330 0 (size (Pos w00330))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00332 0 (size (Pos w00332))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00260 0 (size (Pos w00260))))))

(check-synth)
