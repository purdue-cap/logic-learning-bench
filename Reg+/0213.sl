(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/13) — gt=and(concat(repeatrange(<num>,1,4),optional(concat(<.>,repeatrange(<num>,1,3)))),not(repeatatleast(or(<0>,<.>),1)))")
(set-info :description "Decimal numbers with max 3 decimal places, but, user can write 5 digits. Exclude ''0''")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00262 0 (size (Pos w00262)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00186 0 (size (Pos w00186)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00099 0 (size (Pos w00099)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00285 0 (size (Pos w00285)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00302 0 (size (Pos w00302)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00339 0 (size (Pos w00339))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00006 0 (size (Pos w00006))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00096 0 (size (Pos w00096))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00033 0 (size (Pos w00033))))))

(check-synth)
