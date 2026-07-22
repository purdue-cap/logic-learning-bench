(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/47) — gt=concat(optional(or(<+>,<->)),concat(concat(repeatatleast(<num>,1),concat(<.>,optional(repeatatleast(<num>,1)))),optional(or(<+>,<->))))")
(set-info :description "I need a regular expression that validates a decimal number which includes ''+'', ''-'' sign as well.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00160 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00253 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00094 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00215 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00330 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00332 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00260 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
