(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/13) — gt=and(concat(repeatrange(<num>,1,4),optional(concat(<.>,repeatrange(<num>,1,3)))),not(repeatatleast(or(<0>,<.>),1)))")
(set-info :description "Decimal numbers with max 3 decimal places, but, user can write 5 digits. Exclude ''0''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00262 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00186 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00099 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00285 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00302 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00339 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00006 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00096 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00033 head tail))))

(check-synth)
