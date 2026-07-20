(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/104) — gt=and(contain(<let>),repeatatleast(<alphanum>,1))")
(set-info :description "I have a field that should accept: bulletpoint letters [a-zA-Z] bulletpoint letters with numbers [a-zA-Z0-9] bulletpoint no special characters")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00510 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00685 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00557 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00062 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00057 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00015 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00012 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00463 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00595 head tail))))

(check-synth)
