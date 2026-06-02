(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/23) — gt=and(not(<0>),or(concat(concat(<3>,<0>),optional(concat(<.>,repeatrange(<0>,1,2)))),concat(optional(or(<1>,<2>)),concat(<num>,optional(concat(<.>,repeatrange(<num>,1,2)))))))")
(set-info :description "I need a regular expression that can validate an input string to make sure it is a number between 1 - 30 and up to 2 decimal places.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00010 0 (size (Pos w00010)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00278 0 (size (Pos w00278)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00205 0 (size (Pos w00205)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00294 0 (size (Pos w00294)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00051 0 (size (Pos w00051)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00298 0 (size (Pos w00298))))))

(check-synth)
