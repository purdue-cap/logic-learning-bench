(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/53) — gt=concat(<%>,startwith(repeat(<let>,2)))")
(set-info :description "User allowed to enter two characters after '%'")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00081 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00156 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00329 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00402 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00452 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00003 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00023 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00077 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00080 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
