(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/104) — gt=and(contain(<let>),repeatatleast(<alphanum>,1))")
(set-info :description "I have a field that should accept: bulletpoint letters [a-zA-Z] bulletpoint letters with numbers [a-zA-Z0-9] bulletpoint no special characters")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00510 0 (size (Pos w00510)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00685 0 (size (Pos w00685)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00557 0 (size (Pos w00557)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00062 0 (size (Pos w00062)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00057 0 (size (Pos w00057)))))
(constraint      (RegLan.Sem r (RegLan.Asp w00015 0 (size (Pos w00015)))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00012 0 (size (Pos w00012))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00463 0 (size (Pos w00463))))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00595 0 (size (Pos w00595))))))

(check-synth)
