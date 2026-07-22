(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/23) — gt=and(not(<0>),or(concat(concat(<3>,<0>),optional(concat(<.>,repeatrange(<0>,1,2)))),concat(optional(or(<1>,<2>)),concat(<num>,optional(concat(<.>,repeatrange(<num>,1,2)))))))")
(set-info :description "I need a regular expression that can validate an input string to make sure it is a number between 1 - 30 and up to 2 decimal places.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0223_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0223_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0223_03 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0223_04 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0223_05 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0223_06 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
