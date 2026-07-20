(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/51) — gt=concat(<num>,optional(concat(</>,<num>)))")
(set-info :description "I need to match only strings that include one character '/' between numbers or integer numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (RegLan.Sem r (RegLan.Asp w00007 head tail)))
(constraint      (RegLan.Sem r (RegLan.Asp w00107 head tail)))
(constraint (not (RegLan.Sem r (RegLan.Asp w00518 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00529 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00229 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00292 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00089 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00190 head tail))))
(constraint (not (RegLan.Sem r (RegLan.Asp w00273 head tail))))

(check-synth)
