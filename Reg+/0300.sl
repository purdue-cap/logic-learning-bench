(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/104) — gt=and(contain(<let>),repeatatleast(<alphanum>,1))")
(set-info :description "I have a field that should accept: bulletpoint letters [a-zA-Z] bulletpoint letters with numbers [a-zA-Z0-9] bulletpoint no special characters")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00510 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00685 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00557 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00062 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00057 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00015 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00012 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00463 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00595 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
