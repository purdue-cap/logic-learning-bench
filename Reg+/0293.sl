(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/97) — gt=concat(<%>,concat(star(<any>),<%>))")
(set-info :description "start and finish with a percentage sign and can contain any number of characters in-between")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00023 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00075 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00080 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00078 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00400 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00077 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00074 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00076 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00073 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00328 head tail))))

(check-synth)
