(set-info :author "Chentian Wu")
(set-info :source "REGEL (stackoverflow/51) — gt=concat(<num>,optional(concat(</>,<num>)))")
(set-info :description "I need to match only strings that include one character '/' between numbers or integer numbers.")

(require "./global/theories.stackoverflow.sl")
(require "./global/models.stackoverflow.sl")

(synth-fun r () RegLan)

(constraint      (with-model w00007 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint      (with-model w00107 (RegLan.Sem r (RegLan.Asp head tail))))
(constraint (not (with-model w00518 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00529 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00229 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00292 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00089 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00190 (RegLan.Sem r (RegLan.Asp head tail)))))
(constraint (not (with-model w00273 (RegLan.Sem r (RegLan.Asp head tail)))))

(check-synth)
