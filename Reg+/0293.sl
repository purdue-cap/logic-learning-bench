(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/97) — gt=concat(<%>,concat(star(<any>),<%>))")
(set-info :description "start and finish with a percentage sign and can contain any number of characters in-between")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00023 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00075 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00080 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00078 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00400 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00077 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00074 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00076 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00073 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00328 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
