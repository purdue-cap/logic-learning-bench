(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/58) — gt=not(contain(< >))")
(set-info :description "it doesn't start with a space, doesn't contain a space, and doesn't end with a space.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0255_01 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0255_02 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w0255_03 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w0255_04 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0255_05 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0255_06 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0255_07 head tail))))

(check-synth)
