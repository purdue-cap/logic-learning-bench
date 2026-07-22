(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/58) — gt=not(contain(< >))")
(set-info :description "it doesn't start with a space, doesn't contain a space, and doesn't end with a space.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (with-model w0255_01 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0255_02 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w0255_03 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w0255_04 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0255_05 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0255_06 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w0255_07 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
