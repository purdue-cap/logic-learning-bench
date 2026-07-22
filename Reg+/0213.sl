(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/13) — gt=and(concat(repeatrange(<num>,1,4),optional(concat(<.>,repeatrange(<num>,1,3)))),not(repeatatleast(or(<0>,<.>),1)))")
(set-info :description "Decimal numbers with max 3 decimal places, but, user can write 5 digits. Exclude ''0''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00262 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00186 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00099 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00285 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00302 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00339 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00006 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00096 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00033 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
