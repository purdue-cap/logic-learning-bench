(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/47) — gt=concat(optional(or(<+>,<->)),concat(concat(repeatatleast(<num>,1),concat(<.>,optional(repeatatleast(<num>,1)))),optional(or(<+>,<->))))")
(set-info :description "I need a regular expression that validates a decimal number which includes ''+'', ''-'' sign as well.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00160 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00253 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00094 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00215 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00330 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00332 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00260 head tail))))

(check-synth)
