(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/97) — gt=concat(<%>,concat(star(<any>),<%>))")
(set-info :description "start and finish with a percentage sign and can contain any number of characters in-between")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00023 0 (size (Pos w00023)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00075 0 (size (Pos w00075)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00080 0 (size (Pos w00080)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00078 0 (size (Pos w00078)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00400 0 (size (Pos w00400)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00077 0 (size (Pos w00077)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00074 0 (size (Pos w00074))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00076 0 (size (Pos w00076))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00073 0 (size (Pos w00073))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00328 0 (size (Pos w00328))))))

(check-synth)
