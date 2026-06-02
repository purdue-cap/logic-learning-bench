(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/53) — gt=concat(<%>,startwith(repeat(<let>,2)))")
(set-info :description "User allowed to enter two characters after '%'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00081 0 (size (Pos w00081)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00156 0 (size (Pos w00156)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00329 0 (size (Pos w00329)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00402 0 (size (Pos w00402)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00452 0 (size (Pos w00452)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00003 0 (size (Pos w00003))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00023 0 (size (Pos w00023))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00077 0 (size (Pos w00077))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00080 0 (size (Pos w00080))))))

(check-synth)
