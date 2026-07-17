(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/58) — gt=not(contain(< >))")
(set-info :description "it doesn't start with a space, doesn't contain a space, and doesn't end with a space.")

(require "./global/theories.stackoverflow.regfix.sl")
(require "./global/models.stackoverflow.regfix.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w0255_01 0 (size (Pos w0255_01)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0255_02 0 (size (Pos w0255_02)))))
(constraint      (RegLan.Sem r (RegLan.Asp w0255_03 0 (size (Pos w0255_03)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0255_04 0 (size (Pos w0255_04))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0255_05 0 (size (Pos w0255_05))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0255_06 0 (size (Pos w0255_06))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w0255_07 0 (size (Pos w0255_07))))))

(check-synth)
